Ext.ns('PurchaseForm');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
PurchaseForm = Ext.extend(Ext.Window, {
    formPanel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        PurchaseForm.superclass.constructor.call(
            this,
            {
                id: 'PurchaseFormWin',
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
                                url: _ctxpath + '/api/purchase/get',
                                method: 'GET',
                                params: {
                                    purchaseId: _cfg.id
                                },
                                success: function (form, action) {
                                    var res = action.result;
                                    Ext.getCmp('purchaseNumber').setValue(res.data.purchaseNumber);
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
                                var _arr = new Array();
                                Ext.getCmp('purchaseGoodsAdd_gd').getStore().each(function(rec){
                                    var o = new Object();
                                    o.goodsName = rec.data.goodsName;
                                    o.brand = rec.data.brand;
                                    o.oriArea = rec.data.oriArea;
                                    o.supplierId = rec.data.supplierId;
                                    o.typeId = rec.data.typeId;
                                    o.amount = rec.data.amount;
                                    o.price = rec.data.price;
                                    _arr.push(o);
                                });
                                Ext.getCmp('purchaseGoods').setValue('');
                                Ext.getCmp('purchaseGoods').setValue(Ext.util.JSON.encode(_arr));

                                form.submit({
                                    url: _ctxpath + '/purchase/save.do',
                                    success: function (form, action) {
                                        var result = action.result;
                                        Ext.Msg.show({
                                            title: '提示信息',
                                            msg: result.msg,
                                            icon: Ext.MessageBox.INFO,
                                            buttons: Ext.MessageBox.OK
                                        });
                                        if (result.success) {
                                            Ext.getCmp('PurchaseFormWin').close();
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
                            Ext.getCmp('PurchaseFormWin').close();
                        }
                    }]
            });
    },
    // end of the constructor
    // 初始化组件
    initUIComponents: function (obj) {
        var panel = initGrid(obj);
        formPanel = new Ext.form.FormPanel({
            id: 'PurchaseFormPanel',
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
                title: '采购单',
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
                        id: 'purchaseId',
                        name: 'purchaseId',
                        value: obj.id
                    },{
                        xtype: 'hidden',
                        id : 'purchaseGoods',
                        name: 'purchaseGoods',
                        value: ''
                    },{
                        xtype: 'textfield',
                        id: 'purchaseNumber',
                        name: 'purchaseNumber',
                        fieldLabel: '采购单编号',
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
    var _id = 100000000;
    if (obj.id && obj.id != null && obj.id != ''){
        _id = obj.id;
    }

    var store = new Ext.data.Store({
        autoLoad: {
            params: {
                start: 0,
                limit: 20
            }
        },

        proxy:new Ext.data.HttpProxy({
            url: _ctxpath + '/api/purchaseGoods/getAll?where.purchaseId=' + _id
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [
            {name: 'goodsName'},
            {name: 'brand'},
            {name: 'oriArea'},
            {name: 'supplierId'},
            {name: 'supplier.supplierName'},
            {name: 'typeId'},
            {name: 'type.typeName'},
            {name: 'amount'},
            {name: 'price'}
        ])
    });

    var sm = new Ext.grid.CheckboxSelectionModel({
        singleSelect: false
    });
    var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm,

        {
            header: '商品名称',
            sortable: true,
            dataIndex: 'goodsName',
            width: 80,
            editor: {
                xtype: 'textfield',
                allowBank: false
            }
        },
        {
            header: '品牌',
            sortable: true,
            dataIndex: 'brand',
            width: 80,
            editor: {
                xtype: 'textfield',
                allowBank: false
            }
        },
        {
            header: '原产地',
            sortable: true,
            dataIndex: 'oriArea',
            width: 80,
            editor: {
                xtype: 'textfield',
                allowBank: false
            }
        },{
            header: 'supplierId',
            dataIndex: 'supplierId',
            hidden : true
        },
        {
            header: '供应商名称',
            sortable: true,
            dataIndex: 'supplier.supplierName',
            width: 80,
            editor: {
                id: 'cbx_supplier',
                xtype: 'combo',
                width: 100,
                emptyText: '请选择供应商',
                hiddenName: 'supplier1',
                fieldLabel: '供应商',
                triggerAction: 'all',
                typeAhead: true,
                lazyRender: true,
                mode: 'remote',
                value: '',
                valueField: 'value',
                displayField: 'text',
                editable: false,
                store: new Ext.data.ArrayStore({
                    url: _ctxpath + '/api/supplier/getList',
                    fields: ['value', 'text']
                })
            },
            renderer : function (value, metaData, record, rowIndex, colIndex, store) {
                var s = Ext.getCmp('cbx_supplier').getStore();
                var index = s.find('value',value);
                if (index != -1) {
                    var rec = s.getAt(index);
                    record.set('supplierId',value);
                    return rec.data.text;
                }
                return value;
            }
        },{
            header: 'typeId',
            dataIndex: 'typeId',
            hidden : true
        },
        {
            header: '类型',
            sortable: true,
            dataIndex: 'type.typeName',
            width: 80,
            editor: {
                id: 'cbx_type',
                xtype: 'combo',
                width: 100,
                emptyText: '请选择类型',
                hiddenName: 'type.typeName',
                fieldLabel: '类型',
                triggerAction: 'all',
                typeAhead: true,
                lazyRender: true,
                mode: 'remote',
                value: '',
                valueField: 'value',
                displayField: 'text',
                editable: false,
                store: new Ext.data.ArrayStore({
                    url: _ctxpath + '/api/type/getList',
                    fields: ['value', 'text']
                })
            },
            renderer : function (value, metaData, record, rowIndex, colIndex, store) {
                var s = Ext.getCmp('cbx_type').getStore();
                var index = s.find('value',value);
                if (index != -1) {
                    var rec = s.getAt(index);
                    record.set('typeId',value);
                    return rec.data.text;
                }
                return value;
            }
        },
        {
            header: '数量',
            sortable: true,
            dataIndex: 'amount',
            width: 80,
            editor: {
                xtype: 'numberfield',
                decimalPrecision: 0
            }
        },
        {
            header: '单价',
            sortable: true,
            dataIndex: 'price',
            width: 80,
            editor: {
                xtype: 'numberfield',
                decimalPrecision: 2
            }
        }
    ]);

    var bbar = new G4.PagingBar({store: store});

    var editorGridPanel = new Ext.grid.EditorGridPanel({
        id: 'purchaseGoodsAdd_gd',
        height:250,
        viewConfig: {
            forceFit: true
        },
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
            id: 'id_add_btn_2',
            text: '添加商品',
            iconCls: 'page_addIcon',
            handler: function () {
                var rec = new Ext.data.Record();
                var arr = new Array();
                arr.push(rec);
                editorGridPanel.getStore().add(arr);
            }
        },'-',{
            id: 'id_del_btn_2',
            text: '删除商品',
            iconCls: 'page_delIcon',
            handler: function () {
                var recs = Ext.getCmp('purchaseGoodsAdd_gd').getSelectionModel().getSelections();
                Ext.getCmp('purchaseGoodsAdd_gd').getStore().remove(recs);
            }
        }],
        bbar: bbar
    });
    return editorGridPanel;
}