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
            url: _ctxpath + '/api/sale/getAll'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [
            {name:'saleId'},
            {name:'saleNumber'},
            {name:'total'},
            {name:'payable'},
            {name:'actual'},
            {name:'userExt.userName'},
            {name:'createTime'},
            {name:'comment'}
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
                    fieldLabel: "销售单编号",
                    align: 'left',
                    name: 'where.saleNumber',
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
    var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm,
        {
            header: 'saleId',
            dataIndex: 'saleId',
            hidden: true // 隐藏列
        },
        {
            header: '销售单编号',
            sortable: true,
            dataIndex: 'saleNumber',
            width: 80
        },
        {
            header: '总金额',
            sortable: true,
            dataIndex: 'total',
            width: 80
        },
        {
            header: '应付金额',
            sortable: true,
            dataIndex: 'payable',
            width: 80
        },
        {
            header: '实付金额',
            sortable: true,
            dataIndex: 'actual',
            width: 80
        },
            /*{
                header: '创建人',
                sortable: true,
                dataIndex: 'userExt.userName',
                width: 80
            },*/
        {
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
        },
        {
            header: '备注',
            sortable: true,
            dataIndex: 'comment',
            width: 80
        }
    ]);

    var bbar = new G4.PagingBar({store: store});

    var gridPanel = new Ext.grid.GridPanel({
        viewConfig: {
            forceFit: true
        },
        title: '<span style="font-weight:normal">销售单列表</span>',
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
            text: '添加销售单',
            iconCls: 'page_addIcon',
            handler: function () {
                new SaleForm({
                    id : '',
                    title: '添加销售单', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        }, '-', {
            id: 'id_update_btn',
            text: '编辑销售单',
            iconCls: 'page_edit_1Icon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示信息', '请选择一条记录');
                    return;
                }

                new SaleForm({
                    id: rec.data.saleId, flag: 'edit', title: '编辑销售单', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        }, '-', {
            id: 'id_del_btn',
            text: '删除销售单',
            iconCls: 'page_delIcon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示:', '请先选中项目');
                    return;
                }

                del(rec.data.saleId);
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
                        url: _ctxpath + '/sale/del.do',
                        method: 'GET',
                        params: {
                            saleId: id
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

