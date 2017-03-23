Ext.ns('SaleGoodsAdd');
/**
 * @author
 * @createtime
 * @class
 * @extends Ext.Window
 * @description 表单
 */
SaleGoodsAdd = Ext.extend(Ext.Window, {
    editorGridPanel: null,
    panel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        SaleGoodsAdd.superclass.constructor.call(
            this,
            {
                id: 'SaleGoodsAddWin',
                width: 700,
                height: 500,
                // layout: 'fit',
                layout: 'border',
                autoScroll: false,
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
                constrain: false,
                items: [panel,editorGridPanel],
                listeners: {
                    'beforeshow': function (comp) {

                    }
                },
                buttons: [
                    {
                        text: '保存',
                        iconCls: 'acceptIcon',
                        handler: function () {
                            var _arr = new Array();
                            Ext.getCmp('saleGoodsAdd_gd').getStore().each(function (item) {
                                var _obj = new Object();
                                _obj.saleId = _cfg.id;
                                _obj.goodsId = item.data.goodsId;
                                _obj.amount = item.data.amount;
                                _obj.outPrice = item.data.outPrice;
                                _arr.push(_obj);
                            });
                            Ext.Ajax.request({
                                url: _ctxpath + '/api/saleGoods/save',
                                method: 'GET',
                                params: {
                                    saleId: _cfg.id,
                                    saleGoods:Ext.util.JSON.encode(_arr)
                                },
                                success: function (response, options) {
                                    var result = Ext.decode(response.responseText);
                                    Ext.Msg.show({
                                        title: '提示信息',
                                        msg: result.msg,
                                        icon: Ext.MessageBox.INFO,
                                        buttons: Ext.MessageBox.OK
                                    });
                                    if (result.success == true) {
                                        editorGridPanel.getStore().reload();
                                    }
                                },
                                failure: function (response, options) {

                                }
                            });
                        }
                    }, {
                        text: '关闭',
                        iconCls: 'deleteIcon',
                        handler: function () {
                            Ext.getCmp('SaleGoodsAddWin').close();
                        }
                    }]
            });
    },
    // end of the constructor
    // 初始化组件
    initUIComponents: function (obj) {
        /**
         * 数据存储
         */
        var store = new Ext.data.Store({
            autoLoad: {
                params: {
                    start: 0,
                    limit: 20
                }
            },

            proxy: new Ext.data.HttpProxy({
                url: _ctxpath + '/api/saleGoods/getAll'
            }),
            reader: new Ext.data.JsonReader({
                totalProperty: 'totalCount',
                root: 'root'
            }, [{name: 'goodsId'},
                {name: 'goods.goodsName'},
                {name: 'goods.brand'},
                {name: 'goods.oriArea'},
                {name: 'goods.type.typeName'},
                {name: 'amount'},
                {name: 'outPrice'}
            ])
        });

        var sm = new Ext.grid.CheckboxSelectionModel({
            singleSelect: false
        });
        var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm,
            {
                header: 'id',
                dataIndex: 'id',
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
                header: '类型',
                sortable: true,
                dataIndex: 'goods.type.typeName',
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

        editorGridPanel = new Ext.grid.EditorGridPanel({
            id: 'saleGoodsAdd_gd',
            viewConfig: {
                forceFit: true
            },
            title: '<span style="font-weight:normal">商品列表</span>',
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

        panel = initGoods(editorGridPanel);
    }
});

//******************************************************************************************************************************//
function initGoods(_editorGridPanel){

    /**
     * 数据存储
     */
    var store = new Ext.data.Store({
        autoLoad: {
            params: {
                start: 0,
                limit: 20
            }
        },

        proxy: new Ext.data.HttpProxy({
            url: _ctxpath + '/api/goods/getAll'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{
            name: 'goodsId'
        }, {
            name: 'goodsName'
        }, {
            name: 'brand'
        }, {
            name: 'oriArea'
        }, {
            name: 'inPrice'
        }, {
            name: 'outPrice'
        }, {
            name: 'supplier.supplierName'
        }, {
            name: 'type.typeName'
        }
        ])
    });

    var searchPanel = new Ext.form.FormPanel({
        autoHeight: true,
        region : 'north',
        layout: "form",
        labelWidth: 55,
        padding: '0 0 0 10',
        labelAlign: "left",
        align : 'left',
        border: false,
        defaults: {
            border: false
        },
        items: [{
            layout: 'hbox',
            defaults: {
                border: false
            },
            padding : '10 0 0 2',
            items: [{
                layout: 'form',
                width: 170,
                height: 30,
                align: 'left',
                items: [{
                    fieldLabel: "商品名称",
                    align: 'left',
                    name: 'where.goodsName',
                    xtype: "textfield",
                    width: 100
                }]
            },{
                layout: 'form',
                width: 170,
                labelWidth: 35,
                height: 30,
                align: 'left',
                items: [{
                    fieldLabel: "品牌",
                    align: 'left',
                    name: 'where.brand',
                    xtype: "textfield",
                    width: 100
                }]
            },{
                layout: 'form',
                width: 170,
                height: 30,
                align: 'left',
                labelWidth: 35,
                items: [{
                    xtype : 'combo',
                    width:100,
                    emptyText :'请选择类型',
                    hiddenName : 'where.typeId',
                    fieldLabel : '类型',
                    triggerAction : 'all',
                    typeAhead : true,
                    lazyRender : true,
                    mode : 'remote',
                    value:'',
                    valueField : 'value',
                    displayField : 'text',
                    editable : false,
                    store : new Ext.data.ArrayStore({
                        url : _ctxpath + '/api/type/getList',
                        fields : [ 'value', 'text' ]
                    })

                }]
            },{
                xtype: "button",
                text: '查询',
                iconCls: 'previewIcon',
                width: 80,
                handler: function () {
                    $search(searchPanel, gridPanel);
                }
            },{
                xtype: "button",
                width: 80,
                text: '重置',
                iconCls: 'tbar_synchronizeIcon',
                handler: function () {
                    searchPanel.getForm().reset();
                }
            }]

        }]
    });

    var sm = new Ext.grid.CheckboxSelectionModel({
        singleSelect: true
    });
    var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm, {
        header: 'goodsId',
        dataIndex: 'goodsId',
        hidden: true // 隐藏列
    },{
        header: '商品名词',
        sortable: true,
        dataIndex: 'goodsName',
        width: 60
    }, {
        header: '品牌',
        sortable: true,
        dataIndex: 'brand',
        width: 60
    }, {
        header: '原产地',
        sortable: true,
        dataIndex: 'oriArea',
        width: 60
    }, {
        header: '进价',
        sortable: true,
        dataIndex: 'inPrice',
        width: 30
    }, {
        header: '售价',
        sortable: true,
        dataIndex: 'outPrice',
        width: 30
    }, {
        header: '类型',
        sortable: true,
        dataIndex: 'type.typeName',
        width: 40
    }, {
        header: '供应商',
        sortable: true,
        dataIndex: 'supplier.supplierName',
        width: 60
    }]);

    var bbar = new G4.PagingBar({store: store});

    var gridPanel = new Ext.grid.GridPanel({
        viewConfig: {
            forceFit: true
        },
        title: '<span style="font-weight:normal">商品列表</span>',
        autoScroll: true,
        region: 'center',
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
                var recs = gridPanel.getSelectionModel().getSelections();
                if (recs.length > 0) {
                    var _arr = new Array();
                    Ext.each(recs,function(item,index,allItems){
                        var _r = _editorGridPanel.getStore().getById(item.id);
                        if (!_r || _r == null) {

                            item.set('amount',1);
                            item.set('goods.goodsName',item.data.goodsName);
                            item.set('goodsId',item.data.goodsId);
                            item.set('outPrice',item.data.outPrice);
                            item.set('brand',item.data.brand);
                            item.set('goods.oriArea',item.data.oriArea);
                            item.set('goods.outPrice',item.data.outPrice);
                            _arr.push(item);
                        }
                    });

                    _editorGridPanel.getStore().add(_arr);
                }

            }
        }],
        bbar: bbar
    });

    var panel = new Ext.Panel({
        height:200,
        region:'north',
        layout: 'border',
        items : [searchPanel,gridPanel]
    });

    return panel;
}