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
            url: _ctxpath + '/api/goods/getAll'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{
            name: 'goodsId'
        }, {
            name: 'serialNumber'
        }, {
            name: 'barCode'
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
        }, {
            name: 'createTime'
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
                    name: 'goodsName',
                    xtype: "textfield",
                    width: 120
                },{
                    fieldLabel: "商品编号",
                    align: 'left',
                    name: 'serialNumber',
                    xtype: "textfield",
                    width: 120
                },{
                    fieldLabel: "品牌",
                    align: 'left',
                    name: 'brand',
                    xtype: "textfield",
                    width: 120
                },{
                    fieldLabel: "商品名称",
                    align: 'left',
                    name: 'goodsName',
                    xtype: "textfield",
                    width: 120
                },{
                    fieldLabel: "供应商",
                    align: 'left',
                    name: 'supplierId',
                    xtype: "textfield",
                    width: 120
                },{
                    fieldLabel: "类型",
                    align: 'left',
                    name: '',
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
        header: 'goodsId',
        dataIndex: 'goodsId',
        hidden: true // 隐藏列
    },{
        header: '商品编号',
        sortable: true,
        dataIndex: 'serialNumber',
        width: 60
    }, {
        header: '条形码',
        sortable: true,
        dataIndex: 'barCode',
        width: 60
    }, {
        header: '商品名称',
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
    }, {
        header: '创建时间',
        sortable: true,
        dataIndex: 'createTime',
        width: 60,
        renderer:function(value) {
            if (value instanceof Date) {
                return new Date(value);
            } else {
                var d = new Date();
                d.setTime(value);
                return d.format("Y-m-d H:i:s");
            }
        }
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
                new GoodsForm({
                    id : '',
                    title: '添加商品', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        }, '-', {
            id: 'id_update_btn',
            text: '编辑商品',
            iconCls: 'page_edit_1Icon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示信息', '请选择一条记录');
                    return;
                }

                new GoodsForm({
                    id: rec.data.goodsId, flag: 'edit', title: '编辑商品', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        }, '-', {
            id: 'id_del_btn',
            text: '删除商品',
            iconCls: 'page_delIcon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示:', '请先选中项目');
                    return;
                }

                del(rec.data.goodsId);
            }
        }, '-', {
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

    function del(id) {
        Ext.Msg.show({
            title: '提示信息',
            msg: '确定删除吗？',
            icon: Ext.MessageBox.INFO,
            buttons: Ext.MessageBox.OKCANCEL,
            fn: function (btnId, text, opt) {
                if (btnId == 'ok') {
                    Ext.Ajax.request({
                        url: _ctxpath + '/goods/del.do',
                        method: 'GET',
                        params: {
                            goodsId: id
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
                                gridPanel.getStore().reload();
                            }
                        },
                        failure: function (response, options) {

                        }
                    });
                }
            }
        });
    }
});

