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
            url: _ctxpath + '/api/supplier/getAll'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{
            name: 'supplierId'
        }, {
            name: 'supplierName'
        }, {
            name: 'addr'
        }, {
            name: 'tel'
        }, {
            name: 'email'
        }, {
            name: 'qq'
        }, {
            name: 'contacts'
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
                    fieldLabel: "名称",
                    align: 'left',
                    name: 'where.supplierName',
                    xtype: "textfield",
                    width: 120
                }]
            }, {
                layout: 'form',
                width: 200,
                height: 30,
                items: [{
                    fieldLabel: "手机号",
                    align: 'left',
                    name: 'where.tel',
                    xtype: "textfield",
                    width: 120
                }]
            }, {
                layout: 'form',
                width: 200,
                height: 30,
                items: [{
                    fieldLabel: "联系人",
                    align: 'left',
                    name: 'where.contacts',
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
        singleSelect: true
    });
    var cm = new Ext.grid.ColumnModel([new Ext.grid.RowNumberer(), sm, {
        header: 'supplierId',
        dataIndex: 'supplierId',
        hidden: true // 隐藏列
    }, {
        header: '名称',
        sortable: true,
        dataIndex: 'supplierName',
        width: 80
    }, {
        header: '地址',
        sortable: true,
        dataIndex: 'addr',
        width: 60
    }, {
        header: '手机号',
        sortable: true,
        dataIndex: 'tel'
    }, {
        header: '邮箱',
        sortable: true,
        dataIndex: 'email',
        width: 80
    }, {
        header: 'qq',
        sortable: true,
        dataIndex: 'qq',
        width: 80
    }, {
        header: '联系人',
        sortable: true,
        dataIndex: 'contacts',
        width: 80
    }]);

    var bbar = new G4.PagingBar({store: store});

    var gridPanel = new Ext.grid.GridPanel({
        viewConfig: {
            forceFit: true
        },
        title: '<span style="font-weight:normal">供货商列表</span>',
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
            text: '添加供货商',
            iconCls: 'page_addIcon',
            handler: function () {
                new QuestionForm({
                    title: '新增试题', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        }, '-', {
            id: 'id_update_btn',
            text: '编辑供货商',
            iconCls: 'page_edit_1Icon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示信息', '请选择一条记录');
                    return;
                }

                new QuestionForm({
                    id: rec.data.id, flag: 'edit', title: '编辑试题', callback: function () {
                        gridPanel.getStore().reload();
                    }
                }).show();
            }
        }, '-', {
            id: 'id_del_btn',
            text: '删除供货商',
            iconCls: 'page_delIcon',
            handler: function () {
                var rec = gridPanel.getSelectionModel().getSelected();
                if (rec == null) {
                    Ext.Msg.alert('提示:', '请先选中项目');
                    return;
                }

                del(rec.data.id);
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
                        url: _ctxpath + '/question/delete.do',
                        method: 'GET',
                        params: {
                            id: id
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

