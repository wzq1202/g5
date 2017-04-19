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
            url: _ctxpath + '/api/statistics/getPurchase'
        }),
        reader: new Ext.data.JsonReader({
            totalProperty: 'totalCount',
            root: 'root'
        }, [{
            name: 'goodsId'
        }, {
            name: 'goodsName'
        }, {
            name: 'inAmount'
        }, {
            name: 'inMoney'
        }, {
            name: 'price'
        }
        ])
    });

    var searchPanel = new Ext.form.FormPanel({
        // width: 1000,
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
            padding : '10 0 0 2',
            items: [{
                layout: 'form',
                width: 180,
                height: 30,
                align: 'left',
                items: [{
                    fieldLabel: "开始时间",
                    align: 'left',
                    name: 'where.startTime',
                    xtype: "datefield",
                    format:'Y-m-d',
                    editable:false,
                    width: 100
                }]
            },{
                layout: 'form',
                width: 180,
                height: 30,
                align: 'left',
                items: [{
                    fieldLabel: "结束时间",
                    align: 'left',
                    name: 'where.endTime',
                    xtype: "datefield",
                    editable:false,
                    format:'Y-m-d',
                    width: 100
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
        header: '商品名称',
        sortable: true,
        dataIndex: 'goodsName',
        width: 60
    }, {
        header: '数量',
        sortable: true,
        dataIndex: 'inAmount',
        width: 60
    }, {
        header: '金额',
        sortable: true,
        dataIndex: 'inMoney',
        width: 60
    }, {
        header: '单价',
        sortable: true,
        dataIndex: 'price',
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
        tbar: [],
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