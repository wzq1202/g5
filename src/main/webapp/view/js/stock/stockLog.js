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
            url: _ctxpath + '/api/stockLog/getAll'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{
            name: 'id'
        }, {
            name: 'goods.goodsName'
        }, {
            name: 'amount'
        }, {
            name: 'chgAmount'
        },{
            name: 'chgType'
        }, {
            name: 'createTime'
        }, {
            name: 'userExt.userName'
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
        header: 'id',
        dataIndex: 'id',
        hidden: true // 隐藏列
    }, {
        header: '商品名称',
        sortable: true,
        dataIndex: 'goods.goodsName',
        width: 80
    }, {
        header: '库存量',
        sortable: true,
        dataIndex: 'amount',
        width: 60
    }, {
        header: '变更量',
        sortable: true,
        dataIndex: 'chgAmount',
        width: 60,
        renderer :function (value) {
            var a = value;
            if (value <= 0) {
                a = '<font color="red">' + value + '</font>';
            } else {
                a = '<font color="green">' + value + '</font>';
            }
            return a;
        }
    },{
        header: '变更类型',
        sortable: true,
        dataIndex: 'chgType',
        width: 60,
        renderer :function (value) {
            var a = '';
            switch (value) {
                case 0:
                    a = '初始化';
                    break;
                case 1:
                    a = '销售';
                    break;
                case 2:
                    a = '采购';
                    break;
                case 3:
                    a = '修改库存';
                    break;
            }
            return a;
        }
    }, {
        header: '变更时间',
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
    }, {
        header: '操作用户',
        sortable: true,
        dataIndex: 'userExt.userName',
        width: 60
    }]);

    var bbar = new G4.PagingBar({store: store});

    var gridPanel = new Ext.grid.GridPanel({
        viewConfig: {
            forceFit: true
        },
        title: '<span style="font-weight:normal">库存变更记录</span>',
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
                        url: _ctxpath + '/stockLog/del.do',
                        method: 'GET',
                        params: {
                            stockLogId: id
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

