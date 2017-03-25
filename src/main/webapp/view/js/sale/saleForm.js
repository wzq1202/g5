Ext.ns('SaleForm');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
SaleForm = Ext.extend(Ext.Window, {
    formPanel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        SaleForm.superclass.constructor.call(
            this,
            {
                id: 'SaleFormWin',
                width: 800,
                height: 480,
                layout: 'fit',
                autoScroll: true,
                resizable: false,
                draggable: true,
                closable: true,
                closeAction: 'close',
                modal: true,
                title: '<span class="commoncss">' + _cfg.title + '</span>',
                iconCls: 'page_addIcon',
                collapsible: false,
                titleCollapse: true,
                maximizable: false,
                buttonAlign: 'right',
                border: false,
                animateTarget: Ext.getBody(),
                constrain: true,
                items: formPanel,
                listeners: {
                    'beforeshow': function (comp) {

                        if (_cfg.id != null && _cfg.id != '' && _cfg.id != 'undefined') {
                            formPanel.load({
                                url: _ctxpath + '/api/sale/get',
                                method: 'GET',
                                params: {
                                    saleId: _cfg.id
                                },
                                success: function (form, action) {
                                    var res = action.result;
                                    Ext.getCmp('saleNumber').setValue(res.data.saleNumber);
                                    Ext.getCmp('total').setValue(res.data.total);
                                    Ext.getCmp('payable').setValue(res.data.payable);
                                    Ext.getCmp('actual').setValue(res.data.actual);
                                    Ext.getCmp('comment').setValue(res.data.comment);

                                },
                                failure: function (form, action) {
                                    switch (action.failureType) {
                                        case Ext.form.Action.CLIENT_INVALID:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: 'Form fields may not be submitted with invalid values',
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                            break;
                                        case Ext.form.Action.CONNECT_FAILURE:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: 'Ajax communication failed',
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                            break;
                                        case Ext.form.Action.SERVER_INVALID:
                                            Ext.Msg.show({
                                                title: 'Failure',
                                                msg: action.result.msg,
                                                icon: Ext.MessageBox.ERROR,
                                                buttons: Ext.MessageBox.OK
                                            });
                                    }
                                }
                            });
                        }
                    }
                },
                buttons: [
                    {
                        text: '保存',
                        iconCls: 'acceptIcon',
                        handler: function () {
                            var form = formPanel.getForm();
                            if (form.isValid()) {
                                if (!_cfg.id || _cfg.id == null || _cfg.id == '') {
                                    var _arr = new Array();
                                    Ext.getCmp('saleGoodsAdd_gd').getStore().each(function(rec){
                                        var o = new Object();
                                        o.goodsId = rec.data.goodsId;
                                        o.amount = rec.data.amount;
                                        o.outPrice = rec.data.outPrice;
                                        _arr.push(o);
                                    });
                                    Ext.getCmp('saleGoods').setValue('');
                                    Ext.getCmp('saleGoods').setValue(Ext.util.JSON.encode(_arr));
                                }

                                form.submit({
                                    url: _ctxpath + '/sale/save.do',
                                    success: function (form, action) {
                                        var result = action.result;
                                        Ext.Msg.show({
                                            title: '提示信息',
                                            msg: result.msg,
                                            icon: Ext.MessageBox.INFO,
                                            buttons: Ext.MessageBox.OK
                                        });
                                        if (result.success) {
                                            Ext.getCmp('SaleFormWin').close();
                                            if (_cfg.callback != null) {
                                                _cfg.callback.call(this);
                                            }
                                        }
                                    },
                                    failure: function (form, action) {
                                        switch (action.failureType) {
                                            case Ext.form.Action.CLIENT_INVALID:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: 'Form fields may not be submitted with invalid values',
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                                break;
                                            case Ext.form.Action.CONNECT_FAILURE:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: 'Ajax communication failed',
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                                break;
                                            case Ext.form.Action.SERVER_INVALID:
                                                Ext.Msg.show({
                                                    title: 'Failure',
                                                    msg: action.result.msg,
                                                    icon: Ext.MessageBox.ERROR,
                                                    buttons: Ext.MessageBox.OK
                                                });
                                        }
                                    }
                                });
                            }
                        }
                    },
                    {
                        text: '重置',
                        id: 'btnReset',
                        iconCls: 'tbar_synchronizeIcon',
                        handler: function () {
                            formPanel.getForm().reset();
                        }
                    },
                    {
                        text: '关闭',
                        iconCls: 'deleteIcon',
                        handler: function () {
                            Ext.getCmp('SaleFormWin').close();
                        }
                    }]
            });
    },
    // end of the constructor
    // 初始化组件
    initUIComponents: function (obj) {
        var panel = initGrid(obj);
        formPanel = new Ext.form.FormPanel({
            id: 'SaleFormPanel',
            width: 700,
            height : 500,
            // layout: "column",
            labelAlign: 'right',
            padding: '3 0 0 0',
            border: false,
            labelWidth: 80,
            defaults: {
                layout: 'form',
                border: true
            },
            items: [{
                xtype : 'fieldset',
                columnWidth: 0.4,
                title: '销售单',
                align:'left',
                collapsible: false,
                autoHeight:true,
                layout:'column',
                defaults: {      // defaults applied to items
                    layout: 'form',
                    border: false,
                    bodyStyle: 'padding:4px'
                },
                items : [{
                    items : [{
                        xtype: 'hidden',
                        id: 'saleId',
                        name: 'saleId',
                        value: obj.id
                    },{
                        xtype: 'hidden',
                        id : 'saleGoods',
                        name: 'saleGoods',
                        value: ''
                    },{
                        xtype: 'textfield',
                        id: 'saleNumber',
                        name: 'saleNumber',
                        fieldLabel: '销售单编号',
                        allowBlank: false
                    },{
                        xtype: 'numberfield',
                        id: 'actual',
                        name: 'actual',
                        decimalPrecision:2,
                        fieldLabel: '实付金额',
                        allowBlank: false
                    }]
                },{
                    // layout:'form',
                    // border:false,
                    items:[{
                            xtype: 'numberfield',
                            id: 'payable',
                            name: 'payable',
                            fieldLabel: '应付金额',
                            // readOnly:true,
                            value:0.00,
                            decimalPrecision:2,
                            allowBlank: false
                        },{
                            xtype: 'textfield',
                            id: 'comment',
                            name: 'comment',
                            fieldLabel: '备注',
                            allowBlank: true
                        }
                    ]
                },{
                    items:[{
                        xtype: 'numberfield',
                        id: 'total',
                        name: 'total',
                        fieldLabel: '总金额',
                        // readOnly:true,
                        value:0.00,
                        decimalPrecision:2,
                        allowBlank: false
                    }]
                }]
            },{
                xtype : 'fieldset',
                height:400,
                columnWidth: 0.6,
                title: '商品列表',
                align:'right',
                collapsible: false,
                autoHeight:true,
                items : [panel]
            }]
        });
    }

// end of the initUIComponents
});

function initGrid(obj) {

    var store = new Ext.data.Store({
        autoLoad: {
            params: {
                start: 0,
                limit: 20
            }
        },

        proxy: new Ext.data.HttpProxy({
            url: _ctxpath + '/api/saleGoods/getAll?where.saleId=100000000'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{name: 'goodsId'},
            {name: 'goods.goodsName'},
            {name: 'goods.brand'},
            {name: 'goods.oriArea'},
            {name: 'amount'},
            {name: 'outPrice'}
        ])
    });

    var sm = new Ext.grid.CheckboxSelectionModel({
        singleSelect: false
    });
    var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm,
        {
            header: 'goodsId',
            dataIndex: 'goodsId',
            hidden: true // 隐藏列
        },
        {
            header: '商品名称',
            sortable: true,
            dataIndex: 'goods.goodsName',
            width: 80
        },
        {
            header: '品牌',
            sortable: true,
            dataIndex: 'goods.brand',
            width: 80
        },
        {
            header: '原产地',
            sortable: true,
            dataIndex: 'goods.oriArea',
            width: 80
        },
        {
            header: '数量',
            sortable: true,
            dataIndex: 'amount',
            width: 80,
            editor: {
                xtype: 'numberfield',
                minValue : 1,
                value:1,
                decimalPrecision: 0
            }
        },
        {
            header: '单价',
            sortable: true,
            dataIndex: 'outPrice',
            width: 80
        }
    ]);

    var bbar = new G4.PagingBar({store: store});

    var editorGridPanel = new Ext.grid.EditorGridPanel({
        id: 'saleGoodsAdd_gd',
        height:250,
        viewConfig: {
            forceFit: true
        },
        // title: '<span style="font-weight:normal">商品列表</span>',
        autoScroll: true,
        region: 'center',
        clicksToEdit: 1,
        store: store,
        loadMask: {
            msg: '正在加载表格数据,请稍等...'
        },
        stripeRows: true,
        frame: true,
        cm: cm,
        sm: sm,
        tbar: [{
            id: 'id_add_btn',
            text: '添加商品',
            iconCls: 'page_addIcon',
            handler: function () {
                new SaleGoodsAdd({
                    title : '选择商品',
                    flag : 'add',
                    callback:function (recs) {
                        if (recs != null && recs.length > 0) {
                            var _store = editorGridPanel.getStore();
                            var _arr = new Array();
                            Ext.each(recs,function (item,index,allItems) {
                                var mix = _store.query('goodsId',item.data.goodsId);
                                if (!mix || mix == null || mix.getCount() <= 0) {
                                    var _rc = new Ext.data.Record();
                                    _rc.set('goodsId',item.data.goodsId);
                                    _rc.set('goods.goodsName',item.data.goodsName);
                                    _rc.set('goods.brand',item.data.brand);
                                    _rc.set('goods.oriArea',item.data.oriArea);
                                    _rc.set('amount','1');
                                    _rc.set('outPrice',item.data.outPrice);
                                    _arr.push(_rc);
                                }
                            });
                            _store.add(_arr);
                        }
                    }
                }).show();
            }
        },'-',{
            id: 'id_del_btn',
            text: '删除商品',
            iconCls: 'page_delIcon',
            handler: function () {
                var recs = Ext.getCmp('saleGoodsAdd_gd').getSelectionModel().getSelections();
                Ext.getCmp('saleGoodsAdd_gd').getStore().remove(recs);
            }
        }],
        bbar: bbar
    });

    var idx = editorGridPanel.getColumnModel().findColumnIndex('amount');
    if (obj.id && obj.id != null && obj.id != '') {
        //按钮禁用
        Ext.getCmp('id_add_btn').setDisabled(true);
        Ext.getCmp('id_del_btn').setDisabled(true);
        editorGridPanel.getColumnModel().setEditable(idx,false);
    } else {
        //按钮启用
        Ext.getCmp('id_add_btn').setDisabled(false);
        Ext.getCmp('id_del_btn').setDisabled(false);
        editorGridPanel.getColumnModel().setEditable(idx,true);
    }

    return editorGridPanel;
}