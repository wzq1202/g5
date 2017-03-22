Ext.ns('PurchaseGoodsAdd');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
PurchaseGoodsAdd = Ext.extend(Ext.Window, {
    searchPanel: null,
    gridPanel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        PurchaseGoodsAdd.superclass.constructor.call(
            this,
            {
                id: 'PurchaseGoodsAddWin',
                width: 600,
                height: 450,
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
                items: [gridPanel],
                listeners: {
                    'beforeshow': function (comp) {

                    }
                },
                buttons: [
                    {
                        text: '保存',
                        iconCls: 'acceptIcon',
                        handler: function () {
                            var recs = Ext.getCmp('purchaseGoodsAdd_gd').getSelectionModel().getSelections();
                            if (recs.length <= 0) {
                                Ext.Msg.alert('提示:', '请先选中项目');
                                return;
                            }

                            var _arr = new Array();
                            Ext.each(recs, function (item, idx, _self) {
                                _arr.push(item.data.attrId);
                            });
                            Ext.Ajax.request({
                                url: _ctxpath + '/api/purchaseGoods/save',
                                method: 'GET',
                                params: {
                                    attrIds: _arr,
                                    purchaseId: _cfg.id
                                },
                                success: function (response, options) {
                                    var result = Ext.decode(response.responseText);
                                    var icon = "";
                                    if (result.success == true) {
                                        icon = Ext.MessageBox.INFO;
                                    } else {
                                        icon = Ext.MessageBox.ERROR;
                                    }
                                    Ext.Msg.show({
                                        title: '提示信息',
                                        msg: result.msg,
                                        icon: icon,
                                        buttons: Ext.MessageBox.OK
                                    });
                                },
                                failure: function (response, options) {

                                }
                            });
                        }
                    }, {
                        text: '关闭',
                        iconCls: 'deleteIcon',
                        handler: function () {
                            Ext.getCmp('PurchaseGoodsAddWin').close();
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
                url: _ctxpath + '/api/purchaseGoods/getAll'
            }),
            reader: new Ext.data.JsonReader({
                totalProperty: 'totalCount',
                root: 'root'
            }, [{name: 'id'},
                {name: 'purchase.purchaseName'},
                {name: 'goodsName'},
                {name: 'brand'},
                {name: 'oriArea'},
                {name: 'supplier.supplierName'},
                {name: 'type.typeName'},
                {name: 'amount'},
                {name: 'price'}
            ])
        });

        searchPanel = new Ext.form.FormPanel({
            region: 'north',
            autoHeight: true,
            layout: "form",
            labelWidth: 65,
            padding: '5 0 0 0',
            labelAlign: "right",
            border: false,
            defaults: {
                border: false
            },
            items: [{
                layout: 'hbox',
                defaults: {
                    border: false
                },
                items: [{
                    layout: 'form',
                    width: 200,
                    height: 30,
                    align: 'left',
                    items: [{
                        fieldLabel: "名称",
                        align: 'left',
                        name: 'where.attrName',
                        xtype: "textfield",
                        width: 120
                    }]
                }, {
                    xtype: "button",
                    text: '查询',
                    iconCls: 'previewIcon',
                    width: 80,
                    handler: function () {
                        $search(searchPanel, gridPanel);
                    }
                }]
            }]
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
                    hiddenName: 'supplier.supplierName',
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
                    }),
                    // listeners :{
                    //     select: function (combo,record,index ) {
                    //         alert(this.getId());
                    //         alert(this.ownerCt);
                    //         alert(this.findParentByType('gridcolumn'));
                    //         // alert(this.ownerCt.header);
                    //     }
                    // }
                }
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

        gridPanel = new Ext.grid.EditorGridPanel({
            id: 'purchaseGoodsAdd_gd',
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
                id: 'id_add_btn',
                text: '添加商品',
                iconCls: 'page_addIcon',
                handler: function () {
                    var rec = new Ext.data.Record();
                    var arr = new Array();
                    arr.push(rec);
                    gridPanel.getStore().add(arr);
                }
            }, '-', {
                id: 'id_del_btn',
                text: '删除商品',
                iconCls: 'page_delIcon',
                handler: function () {

                }
            }],
            bbar: bbar
        });
    }

// end of the initUIComponents
});