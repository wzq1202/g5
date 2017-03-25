Ext.onReady(function () {
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
            url: _ctxpath + '/api/stock/getAll'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{
            name: 'stockId'
        }, {
            name: 'goods.goodsName'
        }, {
            name: 'goods.brand'
        }, {
            name: 'goods.type.typeName'
        }, {
            name: 'amount'
        }, {
            name: 'warnAmount'
        }
        ])
    });

    var searchPanel = new Ext.form.FormPanel({
        width: 1000,
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
                    fieldLabel: "商品名称",
                    align: 'left',
                    name: 'where.goods.goodsName',
                    xtype: "textfield",
                    width: 120
                }]
            },{
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
        singleSelect: true
    });
    var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm, {
        header: 'stockId',
        dataIndex: 'stockId',
        hidden: true // 隐藏列
    }, {
        header: '商品名称',
        sortable: true,
        dataIndex: 'goods.goodsName',
        width: 80
    }, {
        header: '品牌',
        sortable: true,
        dataIndex: 'goods.brand',
        width: 60
    }, {
        header: '类型名称',
        sortable: true,
        dataIndex: 'goods.type.typeName',
        width: 60
    }, {
        header: '库存量',
        sortable: true,
        dataIndex: 'amount',
        width: 60
    }, {
        header: '库存预警',
        sortable: true,
        dataIndex: 'warnAmount',
        width: 60
    }
    ]);

    var bbar = new G4.PagingBar({store: store});

    var gridPanel = new Ext.grid.GridPanel({
        viewConfig: {
            forceFit: true
        },
        title: '<span style="font-weight:normal">库存列表</span>',
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
            text: '修改库存',
            iconCls: 'page_addIcon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示信息', '请选择一条记录');
                    return;
                }

                new StockForm({
                    id : rec.data.stockId,
                    title: '编辑库存', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        },'-', {
            text: '刷新',
            iconCls: 'arrow_refreshIcon',
            handler: function () {
                store.reload();
            }
        }],

        bbar: bbar
    });

    /**
     * 布局
     */
    new Ext.Viewport({
        layout: 'border',
        items: [{
            region: 'center',
            layout: 'fit',
            border: false,
            items: [gridPanel]
        }, {
            region: 'north',
            height: 60,
            border: false,
            items: [searchPanel]
        }]
    });
});

