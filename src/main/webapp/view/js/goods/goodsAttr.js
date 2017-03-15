Ext.ns('GoodsAttr');
/**
 * @author
 * @createtime
 * @class StudentForm
 * @extends Ext.Window
 * @description StudentForm表单
 */
GoodsAttr = Ext.extend(Ext.Window, {
    searchPanel: null,
    gridPanel: null,
    // 构造函数
    constructor: function (_cfg) {
        // 必须先初始化组件
        this.initUIComponents(_cfg);
        GoodsAttr.superclass.constructor.call(
            this,
            {
                id: 'GoodsAttrWin',
                width: 450,
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
                items: [searchPanel,gridPanel],
                listeners: {
                    'beforeshow': function (comp) {

                    }
                },
                buttons: [
                    {
                        text: '关闭',
                        iconCls: 'deleteIcon',
                        handler: function () {
                            Ext.getCmp('GoodsAttrWin').close();
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
                url: _ctxpath + '/api/attr/getAll'
            }),
            reader: new Ext.data.JsonReader({
                totalProperty: 'totalCount',
                root: 'root'
            }, [{
                name: 'attrId'
            }, {
                name: 'attrName'
            }, {
                name: 'attrValue'
            }
            ])
        });

        searchPanel = new Ext.form.FormPanel({
            region : 'north',
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
            header: 'attrId',
            dataIndex: 'attrId',
            hidden: true // 隐藏列
        }, {
            header: '属性名称',
            sortable: true,
            dataIndex: 'attrName',
            width: 80
        }, {
            header: '属性值',
            sortable: true,
            dataIndex: 'attrValue',
            width: 60
        }]);

        var bbar = new G4.PagingBar({store: store});

        gridPanel = new Ext.grid.GridPanel({
            viewConfig: {
                forceFit: true
            },
            title: '<span style="font-weight:normal">属性列表</span>',
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
                id: 'id_del_btn',
                text: '删除商品属性',
                iconCls: 'page_delIcon',
                handler: function () {
                    var rec = gridPanel.getSelectionModel().getSelected();
                    if (rec == null) {
                        Ext.Msg.alert('提示:', '请先选中项目');
                        return;
                    }

                    del(rec.data.attrId);
                }
            }],
            bbar: bbar
        });
    }

// end of the initUIComponents
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
                    url: _ctxpath + '/attr/del.do',
                    method: 'GET',
                    params: {
                        attrId: id
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