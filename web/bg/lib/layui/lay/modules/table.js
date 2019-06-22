/** layui-v2.4.1 MIT License By https://www.layui.com */
;layui.define(["laytpl", "laypage", "layer", "form", "util"], function (e) {
    "use strict";
    var t = layui.$, i = layui.laytpl, a = layui.laypage, l = layui.layer, n = layui.form,
        o = (layui.util, layui.hint()), d = layui.device(), r = {
            config: {checkName: "LAY_CHECKED", indexName: "LAY_TABLE_INDEX"},
            cache: {},
            index: layui.table ? layui.table.index + 1e4 : 0,
            set: function (e) {
                var i = this;
                return i.config = t.extend({}, i.config, e), i
            },
            on: function (e, t) {
                return layui.onevent.call(this, s, e, t)
            }
        }, c = function () {
            var e = this, t = e.config, i = t.id;
            return i && (c.config[i] = t), {
                reload: function (t) {
                    e.reload.call(e, t)
                }, setColsWidth: function () {
                    e.setColsWidth.call(e)
                }, config: t
            }
        }, s = "table", u = ".layui-table", h = "layui-hide", y = "layui-none", f = "layui-table-view",
        p = ".layui-table-tool", v = ".layui-table-box", m = ".layui-table-init", g = ".layui-table-header",
        b = ".layui-table-body", x = ".layui-table-main", k = ".layui-table-fixed", C = ".layui-table-fixed-l",
        w = ".layui-table-fixed-r", T = ".layui-table-total", L = ".layui-table-page", W = ".layui-table-sort",
        A = "layui-table-edit", N = "layui-table-hover", S = function (e) {
            var t = '{{#if(item2.colspan){}} colspan="{{item2.colspan}}"{{#} if(item2.rowspan){}} rowspan="{{item2.rowspan}}"{{#}}}';
            return e = e || {}, ['<table cellspacing="0" cellpadding="0" border="0" class="layui-table" ', '{{# if(d.data.skin){ }}lay-skin="{{d.data.skin}}"{{# } }} {{# if(d.data.size){ }}lay-size="{{d.data.size}}"{{# } }} {{# if(d.data.even){ }}lay-even{{# } }}>', "<thead>", "{{# layui.each(d.data.cols, function(i1, item1){ }}", "<tr>", "{{# layui.each(item1, function(i2, item2){ }}", '{{# if(item2.fixed && item2.fixed !== "right"){ left = true; } }}', '{{# if(item2.fixed === "right"){ right = true; } }}', function () {
                return e.fixed && "right" !== e.fixed ? '{{# if(item2.fixed && item2.fixed !== "right"){ }}' : "right" === e.fixed ? '{{# if(item2.fixed === "right"){ }}' : ""
            }(), "{{# var isSort = !(item2.colspan > 1) && item2.sort; }}", '<th data-field="{{ item2.field||i2 }}" {{# if(item2.minWidth){ }}data-minwidth="{{item2.minWidth}}"{{# } }} ' + t + ' {{# if(item2.unresize){ }}data-unresize="true"{{# } }} {{# if(isSort){ }}class="layui-unselect"{{# } }}>', '<div class="layui-table-cell laytable-cell-', "{{# if(item2.colspan > 1){ }}", "group", "{{# } else { }}", "{{d.index}}-{{item2.field || i2}}", '{{# if(item2.type !== "normal"){ }}', " laytable-cell-{{ item2.type }}", "{{# } }}", "{{# } }}", '" {{#if(item2.align){}}align="{{item2.align}}"{{#}}}>', '{{# if(item2.type === "checkbox"){ }}', '<input type="checkbox" name="layTableCheckbox" lay-skin="primary" lay-filter="layTableAllChoose" {{# if(item2[d.data.checkName]){ }}checked{{# }; }}>', "{{# } else { }}", '<span>{{item2.title||""}}</span>', "{{# if(isSort){ }}", '<span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc" title="升序"></i><i class="layui-edge layui-table-sort-desc" title="降序"></i></span>', "{{# } }}", "{{# } }}", "</div>", "</th>", e.fixed ? "{{# }; }}" : "", "{{# }); }}", "</tr>", "{{# }); }}", "</thead>", "</table>"].join("")
        },
        R = ['<table cellspacing="0" cellpadding="0" border="0" class="layui-table" ', '{{# if(d.data.skin){ }}lay-skin="{{d.data.skin}}"{{# } }} {{# if(d.data.size){ }}lay-size="{{d.data.size}}"{{# } }} {{# if(d.data.even){ }}lay-even{{# } }}>', "<tbody></tbody>", "</table>"].join(""),
        E = ['<div class="layui-form layui-border-box {{d.VIEW_CLASS}}" lay-filter="LAY-table-{{d.index}}" style="{{# if(d.data.width){ }}width:{{d.data.width}}px;{{# } }} {{# if(d.data.height){ }}height:{{d.data.height}}px;{{# } }}">', "{{# if(d.data.toolbar){ }}", '<div class="layui-table-tool">', '<div class="layui-table-tool-temp"></div>', '<div class="layui-table-tool-self"></div>', "</div>", "{{# } }}", '<div class="layui-table-box">', '<div class="layui-table-init" style="background-color: #fff;">', '<i class="layui-icon layui-icon-loading layui-icon"></i>', "</div>", "{{# var left, right; }}", '<div class="layui-table-header">', S(), "</div>", '<div class="layui-table-body layui-table-main">', R, "</div>", "{{# if(left){ }}", '<div class="layui-table-fixed layui-table-fixed-l">', '<div class="layui-table-header">', S({fixed: !0}), "</div>", '<div class="layui-table-body">', R, "</div>", "</div>", "{{# }; }}", "{{# if(right){ }}", '<div class="layui-table-fixed layui-table-fixed-r">', '<div class="layui-table-header">', S({fixed: "right"}), '<div class="layui-table-mend"></div>', "</div>", '<div class="layui-table-body">', R, "</div>", "</div>", "{{# }; }}", "</div>", "{{# if(d.data.totalRow){ }}", '<div class="layui-table-total">', '<table cellspacing="0" cellpadding="0" border="0" class="layui-table" ', '{{# if(d.data.skin){ }}lay-skin="{{d.data.skin}}"{{# } }} {{# if(d.data.size){ }}lay-size="{{d.data.size}}"{{# } }} {{# if(d.data.even){ }}lay-even{{# } }}>', '<tbody><tr><td><div class="layui-table-cell" style="visibility: hidden;">Total</div></td></tr></tbody>', "</table>", "</div>", "{{# } }}", "{{# if(d.data.page){ }}", '<div class="layui-table-page">', '<div id="layui-table-page{{d.index}}"></div>', "</div>", "{{# } }}", "<style>", "{{# layui.each(d.data.cols, function(i1, item1){", "layui.each(item1, function(i2, item2){ }}", ".laytable-cell-{{d.index}}-{{item2.field||i2}}{ ", "{{# if(item2.width){ }}", "width: {{item2.width}}px;", "{{# } }}", " }", "{{# });", "}); }}", "</style>", "</div>"].join(""),
        z = t(window), F = t(document), M = function (e) {
            var i = this;
            i.index = ++r.index, i.config = t.extend({}, i.config, r.config, e), i.render()
        };
    M.prototype.config = {
        limit: 10,
        loading: !0,
        cellMinWidth: 60,
        defaultToolbar: ["filter", "exports", "print"],
        text: {none: "无数据"}
    }, M.prototype.render = function () {
        var e = this, a = e.config;
        if (a.elem = t(a.elem), a.where = a.where || {}, a.id = a.id || a.elem.attr("id") || a.index, a.request = t.extend({
            pageName: "page",
            limitName: "limit"
        }, a.request), a.response = t.extend({
            statusName: "code",
            statusCode: 0,
            msgName: "msg",
            dataName: "data",
            countName: "count"
        }, a.response), "object" == typeof a.page && (a.limit = a.page.limit || a.limit, a.limits = a.page.limits || a.limits, e.page = a.page.curr = a.page.curr || 1, delete a.page.elem, delete a.page.jump), !a.elem[0]) return e;
        a.height && /^full-\d+$/.test(a.height) && (e.fullHeightGap = a.height.split("-")[1], a.height = z.height() - e.fullHeightGap), a.height && a.height < 248 && (a.height = 248), e.setInit();
        var l = a.elem, n = l.next("." + f), o = e.elem = t(i(E).render({VIEW_CLASS: f, data: a, index: e.index}));
        if (a.index = e.index, n[0] && n.remove(), l.after(o), e.layTool = o.find(p), e.layBox = o.find(v), e.layHeader = o.find(g), e.layMain = o.find(x), e.layBody = o.find(b), e.layFixed = o.find(k), e.layFixLeft = o.find(C), e.layFixRight = o.find(w), e.layTotal = o.find(T), e.layPage = o.find(L), e.renderToolbar(), e.fullSize(), a.cols.length > 1) {
            var d = e.layFixed.find(g).find("th");
            d.height(e.layHeader.height() - 1 - parseFloat(d.css("padding-top")) - parseFloat(d.css("padding-bottom")))
        }
        e.pullData(e.page), e.events()
    }, M.prototype.initOpts = function (e) {
        var t = this, i = (t.config, {checkbox: 48, radio: 48, space: 15, numbers: 40});
        e.checkbox && (e.type = "checkbox"), e.space && (e.type = "space"), e.type || (e.type = "normal"), "normal" !== e.type && (e.unresize = !0, e.width = e.width || i[e.type])
    }, M.prototype.setInit = function (e) {
        var t = this, i = t.config;
        return i.clientWidth = i.width || function () {
            var e = function (t) {
                var a, l;
                t = t || i.elem.parent(), a = t.width();
                try {
                    l = "none" === t.css("display")
                } catch (n) {
                }
                return !t[0] || a && !l ? a : e(t.parent())
            };
            return e()
        }(), "width" === e ? i.clientWidth : void layui.each(i.cols, function (e, a) {
            layui.each(a, function (e, l) {
                l.minWidth || i.cellMinWidth;
                return l ? void t.initOpts(l) : void a.splice(e, 1)
            })
        })
    }, M.prototype.renderToolbar = function () {
        var e = this, a = e.config,
            l = ['<div class="layui-inline" lay-event="add"><i class="layui-icon layui-icon-add-1"></i></div>', '<div class="layui-inline" lay-event="update"><i class="layui-icon layui-icon-edit"></i></div>', '<div class="layui-inline" lay-event="delete"><i class="layui-icon layui-icon-delete"></i></div>'].join(""),
            n = e.layTool.find(".layui-table-tool-temp");
        if ("default" === a.toolbar) n.html(l); else if (a.toolbar) {
            var o = t(a.toolbar).html() || "";
            o && n.html(i(o).render(a))
        }
        var d = {
            filter: {title: "筛选列", layEvent: "LAYTABLE_COLS", icon: "layui-icon-cols"},
            exports: {title: "导出", layEvent: "LAYTABLE_EXPORT", icon: "layui-icon-export"},
            print: {title: "打印", layEvent: "LAYTABLE_PRINT", icon: "layui-icon-print"}
        }, r = [];
        "object" == typeof a.defaultToolbar && layui.each(a.defaultToolbar, function (e, t) {
            var i = d[t];
            i && r.push('<div class="layui-inline" title="' + i.title + '" lay-event="' + i.layEvent + '"><i class="layui-icon ' + i.icon + '"></i></div>')
        }), e.layTool.find(".layui-table-tool-self").html(r.join(""))
    }, M.prototype.setColsWidth = function () {
        var e = this, t = e.config, i = 0, a = 0, l = 0, n = 0, o = e.setInit("width");
        e.eachCols(function (e, t) {
            t.hide || i++
        }), o = o - function () {
            return "line" === t.skin || "nob" === t.skin ? 2 : i + 1
        }() - e.getScrollWidth(e.layMain[0]) - 1;
        var d = function (e) {
            layui.each(t.cols, function (i, d) {
                layui.each(d, function (i, r) {
                    var c = 0, s = r.minWidth || t.cellMinWidth;
                    return r ? void (r.colspan > 1 || (e ? l && l < s && (a--, c = s) : (c = r.width || 0, /\d+%$/.test(c) ? (c = Math.floor(parseFloat(c) / 100 * o), c < s && (c = s)) : c || (r.width = c = 0, a++)), r.hide && (c = 0), n += c)) : void d.splice(i, 1)
                })
            }), o > n && a && (l = (o - n) / a)
        };
        d(), d(!0), e.autoColNums = a, e.eachCols(function (i, a) {
            var n = a.minWidth || t.cellMinWidth, d = a.field || i;
            a.colspan > 1 || (0 === a.width ? e.getCssRule(d, function (e) {
                e.style.width = Math.floor(l >= n ? l : n) + "px"
            }) : /\d+%$/.test(a.width) && e.getCssRule(d, function (e) {
                e.style.width = Math.floor(parseFloat(a.width) / 100 * o) + "px"
            }))
        });
        var r = e.layMain.width() - e.getScrollWidth(e.layMain[0]) - e.layMain.children("table").outerWidth();
        if (e.autoColNums && r >= -i && r <= i) {
            var c = function (t) {
                var i;
                return t = t || e.layHeader.eq(0).find("thead th:last-child"), i = t.data("field"), !i && t.prev()[0] ? c(t.prev()) : t
            }, s = c(), u = s.data("field");
            e.getCssRule(u, function (t) {
                var i = t.style.width || s.outerWidth();
                t.style.width = parseFloat(i) + r + "px", e.layMain.height() - e.layMain.prop("clientHeight") > 0 && (t.style.width = parseFloat(t.style.width) - 1 + "px")
            })
        }
        e.loading(!0)
    }, M.prototype.reload = function (e) {
        var i = this;
        i.config.data && i.config.data.constructor === Array && delete i.config.data, i.config = t.extend({}, i.config, e), i.render()
    }, M.prototype.page = 1, M.prototype.pullData = function (e) {
        var i = this, a = i.config, l = a.request, n = a.response, o = function () {
            "object" == typeof a.initSort && i.sort(a.initSort.field, a.initSort.type)
        };
        if (i.startTime = (new Date).getTime(), a.url) {
            var d = {};
            d[l.pageName] = e, d[l.limitName] = a.limit;
            var r = t.extend(d, a.where);
            a.contentType && 0 == a.contentType.indexOf("application/json") && (r = JSON.stringify(r)), t.ajax({
                type: a.method || "get",
                url: a.url,
                contentType: a.contentType,
                data: r,
                dataType: "json",
                headers: a.headers || {},
                success: function (t) {
                    "function" == typeof a.parseData && (t = a.parseData(t) || t), t[n.statusName] != n.statusCode ? (i.renderForm(), i.layMain.html('<div class="' + y + '">' + (t[n.msgName] || "返回的数据不符合规范，正确的成功状态码 (" + n.statusName + ") 应为：" + n.statusCode) + "</div>")) : (i.renderData(t, e, t[n.countName]), o(), a.time = (new Date).getTime() - i.startTime + " ms"), i.setColsWidth(), "function" == typeof a.done && a.done(t, e, t[n.countName])
                },
                error: function (e, t) {
                    i.layMain.html('<div class="' + y + '">数据接口请求异常：' + t + "</div>"), i.renderForm(), i.setColsWidth()
                }
            })
        } else if (a.data && a.data.constructor === Array) {
            var c = {}, s = e * a.limit - a.limit;
            c[n.dataName] = a.data.concat().splice(s, a.limit), c[n.countName] = a.data.length, i.renderData(c, e, a.data.length), o(), i.setColsWidth(), "function" == typeof a.done && a.done(c, e, c[n.countName])
        }
    }, M.prototype.eachCols = function (e) {
        var t = this;
        return r.eachCols(null, e, t.config.cols), t
    }, M.prototype.renderData = function (e, n, o, d) {
        var c = this, s = c.config, u = e[s.response.dataName] || [], f = [], p = [], v = [], m = function () {
            var e;
            return !d && c.sortKey ? c.sort(c.sortKey.field, c.sortKey.sort, !0) : (layui.each(u, function (a, l) {
                var o = [], u = [], h = [], y = a + s.limit * (n - 1) + 1;
                0 !== l.length && (d || (l[r.config.indexName] = a), c.eachCols(function (n, d) {
                    var c = d.field || n, f = l[c];
                    if (void 0 !== f && null !== f || (f = ""), !(d.colspan > 1 || d.hide)) {
                        var p = ['<td data-field="' + c + '" ' + function () {
                            var e = [];
                            return d.edit && e.push('data-edit="' + d.edit + '"'), d.align && e.push('align="' + d.align + '"'), d.templet && e.push('data-content="' + f + '"'), d.toolbar && e.push('data-off="true"'), d.event && e.push('lay-event="' + d.event + '"'), d.style && e.push('style="' + d.style + '"'), d.minWidth && e.push('data-minwidth="' + d.minWidth + '"'), e.join(" ")
                        }() + ">", '<div class="layui-table-cell laytable-cell-' + function () {
                            var e = s.index + "-" + c;
                            return "normal" === d.type ? e : e + " laytable-cell-" + d.type
                        }() + '">' + function () {
                            var n = t.extend(!0, {LAY_INDEX: y}, l), o = r.config.checkName;
                            switch (d.type) {
                                case"checkbox":
                                    return '<input type="checkbox" name="layTableCheckbox" lay-skin="primary" ' + function () {
                                        return d[o] ? (l[o] = d[o], d[o] ? "checked" : "") : n[o] ? "checked" : ""
                                    }() + ">";
                                case"radio":
                                    return n[o] && (e = a), '<input type="radio" name="layTableRadio_' + s.index + '" ' + (n[o] ? "checked" : "") + ' lay-type="layTableRadio">';
                                case"numbers":
                                    return y
                            }
                            return d.toolbar ? i(t(d.toolbar).html() || "").render(n) : d.templet ? function () {
                                return "function" == typeof d.templet ? d.templet(n) : i(t(d.templet).html() || String(f)).render(n)
                            }() : f
                        }(), "</div></td>"].join("");
                        o.push(p), d.fixed && "right" !== d.fixed && u.push(p), "right" === d.fixed && h.push(p)
                    }
                }), f.push('<tr data-index="' + a + '">' + o.join("") + "</tr>"), p.push('<tr data-index="' + a + '">' + u.join("") + "</tr>"), v.push('<tr data-index="' + a + '">' + h.join("") + "</tr>"))
            }), c.layBody.scrollTop(0), c.layMain.find("." + y).remove(), c.layMain.find("tbody").html(f.join("")), c.layFixLeft.find("tbody").html(p.join("")), c.layFixRight.find("tbody").html(v.join("")), c.renderForm(), "number" == typeof e && c.setThisRowChecked(e), c.syncCheckAll(), c.haveInit ? c.scrollPatch() : setTimeout(function () {
                c.scrollPatch()
            }, 50), c.haveInit = !0, void l.close(c.tipsIndex))
        };
        return c.key = s.id || s.index, r.cache[c.key] = u, c.layPage[0 == o || 0 === u.length && 1 == n ? "addClass" : "removeClass"](h), d ? m() : 0 === u.length ? (c.renderForm(), c.layFixed.remove(), c.layMain.find("tbody").html(""), c.layMain.find("." + y).remove(), c.layMain.append('<div class="' + y + '">' + s.text.none + "</div>")) : (m(), c.renderTotal(u), void (s.page && (s.page = t.extend({
            elem: "layui-table-page" + s.index,
            count: o,
            limit: s.limit,
            limits: s.limits || [10, 20, 30, 40, 50, 60, 70, 80, 90],
            groups: 3,
            layout: ["prev", "page", "next", "skip", "count", "limit"],
            prev: '<i class="layui-icon">&#xe603;</i>',
            next: '<i class="layui-icon">&#xe602;</i>',
            jump: function (e, t) {
                t || (c.page = e.curr, s.limit = e.limit, c.loading(), c.pullData(e.curr))
            }
        }, s.page), s.page.count = o, a.render(s.page))))
    }, M.prototype.renderTotal = function (e) {
        var t = this, i = t.config, a = {};
        if (i.totalRow) {
            layui.each(e, function (e, i) {
                0 !== i.length && t.eachCols(function (e, t) {
                    var l = t.field || e, n = i[l];
                    t.totalRow && (a[l] = (a[l] || 0) + parseFloat(n))
                })
            });
            var l = [];
            t.eachCols(function (e, t) {
                var n = t.field || e;
                if (!t.hide) {
                    var o = ['<td data-field="' + n + '" ' + function () {
                        var e = [];
                        return t.align && e.push('align="' + t.align + '"'), t.style && e.push('style="' + t.style + '"'), t.minWidth && e.push('data-minwidth="' + t.minWidth + '"'), e.join(" ")
                    }() + ">", '<div class="layui-table-cell laytable-cell-' + function () {
                        var e = i.index + "-" + n;
                        return "normal" === t.type ? e : e + " laytable-cell-" + t.type
                    }() + '">' + function () {
                        var e = t.totalRowText || "";
                        return t.totalRow ? a[n] || e : e
                    }(), "</div></td>"].join("");
                    l.push(o)
                }
            }), t.layTotal.find("tbody").html("<tr>" + l.join("") + "</tr>")
        }
    }, M.prototype.getColElem = function (e, t) {
        var i = this, a = i.config;
        return e.eq(0).find(".laytable-cell-" + (a.index + "-" + t) + ":eq(0)")
    }, M.prototype.renderForm = function (e) {
        n.render(e, "LAY-table-" + this.index)
    }, M.prototype.setThisRowChecked = function (e) {
        var t = this, i = (t.config, "layui-table-click"), a = t.layBody.find('tr[data-index="' + e + '"]');
        a.addClass(i).siblings("tr").removeClass(i)
    }, M.prototype.sort = function (e, i, a, l) {
        var n, d, c = this, u = {}, h = c.config, y = h.elem.attr("lay-filter"), f = r.cache[c.key];
        "string" == typeof e && c.layHeader.find("th").each(function (i, a) {
            var l = t(this), o = l.data("field");
            if (o === e) return e = l, n = o, !1
        });
        try {
            var n = n || e.data("field");
            if (c.sortKey && !a && n === c.sortKey.field && i === c.sortKey.sort) return;
            var p = c.layHeader.find("th .laytable-cell-" + h.index + "-" + n).find(W);
            c.layHeader.find("th").find(W).removeAttr("lay-sort"), p.attr("lay-sort", i || null), c.layFixed.find("th")
        } catch (v) {
            return o.error("Table modules: Did not match to field")
        }
        c.sortKey = {
            field: n,
            sort: i
        }, "asc" === i ? d = layui.sort(f, n) : "desc" === i ? d = layui.sort(f, n, !0) : (d = layui.sort(f, r.config.indexName), delete c.sortKey), u[h.response.dataName] = d, c.renderData(u, c.page, c.count, !0), l && layui.event.call(e, s, "sort(" + y + ")", {
            field: n,
            type: i
        })
    }, M.prototype.loading = function (e) {
        var i = this, a = i.config;
        a.loading && (e ? (i.layInit && i.layInit.remove(), delete i.layInit, i.layBox.find(m).remove()) : (i.layInit = t(['<div class="layui-table-init">', '<i class="layui-icon layui-icon-loading layui-icon"></i>', "</div>"].join("")), i.layBox.append(i.layInit)))
    }, M.prototype.setCheckData = function (e, t) {
        var i = this, a = i.config, l = r.cache[i.key];
        l[e] && l[e].constructor !== Array && (l[e][a.checkName] = t)
    }, M.prototype.syncCheckAll = function () {
        var e = this, t = e.config, i = e.layHeader.find('input[name="layTableCheckbox"]'), a = function (i) {
            return e.eachCols(function (e, a) {
                "checkbox" === a.type && (a[t.checkName] = i)
            }), i
        };
        i[0] && (r.checkStatus(e.key).isAll ? (i[0].checked || (i.prop("checked", !0), e.renderForm("checkbox")), a(!0)) : (i[0].checked && (i.prop("checked", !1), e.renderForm("checkbox")), a(!1)))
    }, M.prototype.getCssRule = function (e, t) {
        var i = this, a = i.elem.find("style")[0], l = a.sheet || a.styleSheet || {}, n = l.cssRules || l.rules;
        layui.each(n, function (a, l) {
            if (l.selectorText === ".laytable-cell-" + i.index + "-" + e) return t(l), !0
        })
    }, M.prototype.fullSize = function () {
        var e, t = this, i = t.config, a = i.height;
        t.fullHeightGap && (a = z.height() - t.fullHeightGap, a < 135 && (a = 135), t.elem.css("height", a)), a && (e = parseFloat(a) - (t.layHeader.outerHeight() || 38), i.toolbar && (e -= t.layTool.outerHeight() || 50), i.totalRow && (e -= t.layTotal.outerHeight() || 40), i.page && (e = e - (t.layPage.outerHeight() || 41) - 2), t.layMain.css("height", e))
    }, M.prototype.getScrollWidth = function (e) {
        var t = 0;
        return e ? t = e.offsetWidth - e.clientWidth : (e = document.createElement("div"), e.style.width = "100px", e.style.height = "100px", e.style.overflowY = "scroll", document.body.appendChild(e), t = e.offsetWidth - e.clientWidth, document.body.removeChild(e)), t
    }, M.prototype.scrollPatch = function () {
        var e = this, i = e.layMain.children("table"), a = e.layMain.width() - e.layMain.prop("clientWidth"),
            l = e.layMain.height() - e.layMain.prop("clientHeight"),
            n = (e.getScrollWidth(e.layMain[0]), i.outerWidth() - e.layMain.width()), o = function (e) {
                if (a && l) {
                    if (e = e.eq(0), !e.find(".layui-table-patch")[0]) {
                        var i = t('<th class="layui-table-patch"><div class="layui-table-cell"></div></th>');
                        i.find("div").css({width: a}), e.find("tr").append(i)
                    }
                } else e.find(".layui-table-patch").remove()
            };
        o(e.layHeader), o(e.layTotal);
        var d = e.layMain.height(), r = d - l;
        e.layFixed.find(b).css("height", i.height() > r ? r : "auto"), e.layFixRight[n > 0 ? "removeClass" : "addClass"](h), e.layFixRight.css("right", a - 1)
    }, M.prototype.events = function () {
        var e, a = this, o = a.config, c = t("body"), u = {}, y = a.layHeader.find("th"), f = ".layui-table-cell",
            p = o.elem.attr("lay-filter");
        a.layTool.on("click", "*[lay-event]", function (e) {
            var i = t(this), c = i.attr("lay-event"), u = function (e) {
                var l = t(e.list), n = t('<ul class="layui-table-tool-panel"></ul>');
                n.html(l), i.find(".layui-table-tool-panel")[0] || i.append(n), a.renderForm(), n.on("click", function (e) {
                    layui.stope(e)
                }), e.done && e.done(n, l)
            };
            switch (layui.stope(e), F.trigger("table.tool.panel.remove"), l.close(a.tipsIndex), c) {
                case"LAYTABLE_COLS":
                    u({
                        list: function () {
                            var e = [];
                            return a.eachCols(function (t, i) {
                                i.field && "normal" == i.type && e.push('<li><input type="checkbox" name="' + i.field + '" lay-skin="primary" ' + (i.hide ? "" : "checked") + ' title="' + i.title + '" lay-filter="LAY_TABLE_TOOL_COLS"></li>')
                            }), e.join("")
                        }(), done: function () {
                            n.on("checkbox(LAY_TABLE_TOOL_COLS)", function (e) {
                                layui.each(o.cols, function (t, i) {
                                    layui.each(i, function (t, i) {
                                        i.field === e.elem.name && (i.hide = !e.elem.checked, a.elem.find('*[data-field="' + e.elem.name + '"]')[e.elem.checked ? "removeClass" : "addClass"](h), a.fullSize(), a.scrollPatch(), a.setColsWidth())
                                    })
                                })
                            })
                        }
                    });
                    break;
                case"LAYTABLE_EXPORT":
                    d.ie ? l.tips("导出功能不支持 IE，请用 Chrome 等高级浏览器导出", this, {tips: 3}) : u({
                        list: function () {
                            return ['<li data-type="csv">导出到 Csv 文件</li>', '<li data-type="xls">导出到 Excel 文件</li>'].join("")
                        }(), done: function (e, i) {
                            i.on("click", function () {
                                var e = t(this).data("type");
                                r.exportFile(o.id, null, e)
                            })
                        }
                    });
                    break;
                case"LAYTABLE_PRINT":
                    var y = window.open("打印窗口", "_blank"),
                        f = ["<style>", "body{font-size: 12px; color: #666;}", "table{width: 100%; border-collapse: collapse; border-spacing: 0;}", "th,td{line-height: 20px; padding: 9px 15px; border: 1px solid #ccc; text-align: left; font-size: 12px; color: #666;}", "*.layui-hide{display: none}", "</style>"].join(""),
                        v = t(a.layHeader.html());
                    v.find("th.layui-table-patch").remove(), v.append(a.layMain.find("table").html()), y.document.write(f + v.prop("outerHTML")), y.document.close(), y.print(), y.close()
            }
            layui.event.call(this, s, "toolbar(" + p + ")", t.extend({event: c, config: o}, {}))
        }), y.on("mousemove", function (e) {
            var i = t(this), a = i.offset().left, l = e.clientX - a;
            i.attr("colspan") > 1 || i.data("unresize") || u.resizeStart || (u.allowResize = i.width() - l <= 10, c.css("cursor", u.allowResize ? "col-resize" : ""))
        }).on("mouseleave", function () {
            t(this);
            u.resizeStart || c.css("cursor", "")
        }).on("mousedown", function (e) {
            var i = t(this);
            if (u.allowResize) {
                var l = i.data("field");
                e.preventDefault(), u.resizeStart = !0, u.offset = [e.clientX, e.clientY], a.getCssRule(l, function (e) {
                    var t = e.style.width || i.outerWidth();
                    u.rule = e, u.ruleWidth = parseFloat(t), u.minWidth = i.data("minwidth") || o.cellMinWidth
                })
            }
        }), F.on("mousemove", function (t) {
            if (u.resizeStart) {
                if (t.preventDefault(), u.rule) {
                    var i = u.ruleWidth + t.clientX - u.offset[0];
                    i < u.minWidth && (i = u.minWidth), u.rule.style.width = i + "px", l.close(a.tipsIndex)
                }
                e = 1
            }
        }).on("mouseup", function (t) {
            u.resizeStart && (u = {}, c.css("cursor", ""), a.scrollPatch()), 2 === e && (e = null)
        }), y.on("click", function (i) {
            var l, n = t(this), o = n.find(W), d = o.attr("lay-sort");
            return o[0] && 1 !== e ? (l = "asc" === d ? "desc" : "desc" === d ? null : "asc", void a.sort(n, l, null, !0)) : e = 2
        }).find(W + " .layui-edge ").on("click", function (e) {
            var i = t(this), l = i.index(), n = i.parents("th").eq(0).data("field");
            layui.stope(e), 0 === l ? a.sort(n, "asc", null, !0) : a.sort(n, "desc", null, !0)
        });
        var v = function (e) {
            var l = t(this), n = l.parents("tr").eq(0).data("index"), o = a.layBody.find('tr[data-index="' + n + '"]'),
                d = r.cache[a.key][n];
            return t.extend({
                tr: o, data: r.clearCacheKey(d), del: function () {
                    r.cache[a.key][n] = [], o.remove(), a.scrollPatch()
                }, update: function (e) {
                    e = e || {}, layui.each(e, function (e, l) {
                        if (e in d) {
                            var n, r = o.children('td[data-field="' + e + '"]');
                            d[e] = l, a.eachCols(function (t, i) {
                                i.field == e && i.templet && (n = i.templet)
                            }), r.children(f).html(function () {
                                return n ? function () {
                                    return "function" == typeof n ? n(d) : i(t(n).html() || l).render(d)
                                }() : l
                            }()), r.data("content", l)
                        }
                    })
                }
            }, e)
        };
        a.elem.on("click", 'input[name="layTableCheckbox"]+', function () {
            var e = t(this).prev(), i = a.layBody.find('input[name="layTableCheckbox"]'),
                l = e.parents("tr").eq(0).data("index"), n = e[0].checked,
                o = "layTableAllChoose" === e.attr("lay-filter");
            o ? (i.each(function (e, t) {
                t.checked = n, a.setCheckData(e, n)
            }), a.syncCheckAll(), a.renderForm("checkbox")) : (a.setCheckData(l, n), a.syncCheckAll()), layui.event.call(this, s, "checkbox(" + p + ")", v.call(this, {
                checked: n,
                type: o ? "all" : "one"
            }))
        }), a.elem.on("click", 'input[lay-type="layTableRadio"]+', function () {
            var e = t(this).prev(), i = e[0].checked, l = r.cache[a.key], n = e.parents("tr").eq(0).data("index");
            layui.each(l, function (e, t) {
                n === e ? t.LAY_CHECKED = !0 : delete t.LAY_CHECKED
            }), a.setThisRowChecked(n), layui.event.call(this, s, "radio(" + p + ")", v.call(this, {checked: i}))
        }), a.layBody.on("mouseenter", "tr", function () {
            var e = t(this), i = e.index();
            a.layBody.find("tr:eq(" + i + ")").addClass(N)
        }).on("mouseleave", "tr", function () {
            var e = t(this), i = e.index();
            a.layBody.find("tr:eq(" + i + ")").removeClass(N)
        }).on("click", "tr", function () {
            m.call(this, "row")
        }).on("dblclick", "tr", function () {
            m.call(this, "rowDouble")
        });
        var m = function (e) {
            var i = t(this);
            layui.event.call(this, s, e + "(" + p + ")", v.call(i.children("td")[0]))
        };
        a.layBody.on("change", "." + A, function () {
            var e = t(this), i = this.value, l = e.parent().data("field"), n = e.parents("tr").eq(0).data("index"),
                o = r.cache[a.key][n];
            o[l] = i, layui.event.call(this, s, "edit(" + p + ")", v.call(this, {value: i, field: l}))
        }).on("blur", "." + A, function () {
            var e, l = t(this), n = l.parent().data("field"), o = l.parents("tr").eq(0).data("index"),
                d = r.cache[a.key][o];
            a.eachCols(function (t, i) {
                i.field == n && i.templet && (e = i.templet)
            }), l.siblings(f).html(function (a) {
                return e ? function () {
                    return "function" == typeof e ? e(d) : i(t(e).html() || this.value).render(d)
                }() : a
            }(this.value)), l.parent().data("content", this.value), l.remove()
        }), a.layBody.on("click", "td", function () {
            var e = t(this), i = (e.data("field"), e.data("edit")), a = e.children(f);
            if (!e.data("off") && i) {
                var l = t('<input class="layui-input ' + A + '">');
                return l[0].value = e.data("content") || a.text(), e.find("." + A)[0] || e.append(l), void l.focus()
            }
        }).on("mouseenter", "td", function () {
            x.call(this)
        }).on("mouseleave", "td", function () {
            x.call(this, "hide")
        });
        var g = "layui-table-grid-down", x = function (e) {
            var i = t(this), a = i.children(f);
            if (e) i.find(".layui-table-grid-down").remove(); else if (a.prop("scrollWidth") > a.outerWidth()) {
                if (a.find("." + g)[0]) return;
                i.append('<div class="' + g + '"><i class="layui-icon layui-icon-down"></i></div>')
            }
        };
        a.layBody.on("click", "." + g, function () {
            var e = t(this), i = e.parent(), n = i.children(f);
            a.tipsIndex = l.tips(['<div class="layui-table-tips-main" style="margin-top: -' + (n.height() + 16) + "px;" + function () {
                return "sm" === o.size ? "padding: 4px 15px; font-size: 12px;" : "lg" === o.size ? "padding: 14px 15px;" : ""
            }() + '">', n.html(), "</div>", '<i class="layui-icon layui-table-tips-c layui-icon-close"></i>'].join(""), n[0], {
                tips: [3, ""],
                time: -1,
                anim: -1,
                maxWidth: d.ios || d.android ? 300 : a.elem.width() / 2,
                isOutAnim: !1,
                skin: "layui-table-tips",
                success: function (e, t) {
                    e.find(".layui-table-tips-c").on("click", function () {
                        l.close(t)
                    })
                }
            })
        }), a.layBody.on("click", "*[lay-event]", function () {
            var e = t(this), i = e.parents("tr").eq(0).data("index");
            layui.event.call(this, s, "tool(" + p + ")", v.call(this, {event: e.attr("lay-event")})), a.setThisRowChecked(i)
        }), a.layMain.on("scroll", function () {
            var e = t(this), i = e.scrollLeft(), n = e.scrollTop();
            a.layHeader.scrollLeft(i), a.layTotal.scrollLeft(i), a.layFixed.find(b).scrollTop(n), l.close(a.tipsIndex)
        }), F.on("click", function () {
            F.trigger("table.remove.tool.panel")
        }), F.on("table.remove.tool.panel", function () {
            t(".layui-table-tool-panel").remove()
        }), z.on("resize", function () {
            a.fullSize(), a.scrollPatch(), a.setColsWidth()
        })
    }, r.init = function (e, i) {
        i = i || {};
        var a = this, l = t(e ? 'table[lay-filter="' + e + '"]' : u + "[lay-data]"),
            n = "Table element property lay-data configuration item has a syntax error: ";
        return l.each(function () {
            var a = t(this), l = a.attr("lay-data");
            try {
                l = new Function("return " + l)()
            } catch (d) {
                o.error(n + l)
            }
            var c = [], s = t.extend({
                elem: this,
                cols: [],
                data: [],
                skin: a.attr("lay-skin"),
                size: a.attr("lay-size"),
                even: "string" == typeof a.attr("lay-even")
            }, r.config, i, l);
            e && a.hide(), a.find("thead>tr").each(function (e) {
                s.cols[e] = [], t(this).children().each(function (i) {
                    var a = t(this), l = a.attr("lay-data");
                    try {
                        l = new Function("return " + l)()
                    } catch (d) {
                        return o.error(n + l)
                    }
                    var r = t.extend({
                        title: a.text(),
                        colspan: a.attr("colspan") || 0,
                        rowspan: a.attr("rowspan") || 0
                    }, l);
                    r.colspan < 2 && c.push(r), s.cols[e].push(r)
                })
            }), a.find("tbody>tr").each(function (e) {
                var i = t(this), a = {};
                i.children("td").each(function (e, i) {
                    var l = t(this), n = l.data("field");
                    if (n) return a[n] = l.html()
                }), layui.each(c, function (e, t) {
                    var l = i.children("td").eq(e);
                    a[t.field] = l.html()
                }), s.data[e] = a
            }), r.render(s)
        }), a
    }, c.config = {}, r.eachCols = function (e, i, a) {
        var l = c.config[e] || {}, n = [], o = 0;
        a = t.extend(!0, [], a || l.cols), layui.each(a, function (e, t) {
            layui.each(t, function (t, i) {
                if (i.colspan > 1) {
                    var l = 0;
                    o++, i.CHILD_COLS = [], layui.each(a[e + 1], function (e, t) {
                        t.PARENT_COL || l == i.colspan || (t.PARENT_COL = o, i.CHILD_COLS.push(t), l += t.colspan > 1 ? t.colspan : 1)
                    })
                }
                i.PARENT_COL || n.push(i)
            })
        });
        var d = function (e) {
            layui.each(e || n, function (e, t) {
                return t.CHILD_COLS ? d(t.CHILD_COLS) : void i(e, t)
            })
        };
        d()
    }, r.checkStatus = function (e) {
        var t = 0, i = 0, a = [], l = r.cache[e] || [];
        return layui.each(l, function (e, l) {
            return l.constructor === Array ? void i++ : void (l[r.config.checkName] && (t++, a.push(r.clearCacheKey(l))))
        }), {data: a, isAll: !!l.length && t === l.length - i}
    }, r.exportFile = function (e, t, i) {
        t = t || r.clearCacheKey(r.cache[e]), i = i || "csv";
        var a = c.config[e] || {}, l = {csv: "text/csv", xls: "application/vnd.ms-excel"}[i],
            n = document.createElement("a");
        return d.ie ? o.error("IE_NOT_SUPPORT_EXPORTS") : (n.href = "data:" + l + ";charset=utf-8,\ufeff" + encodeURIComponent(function () {
            var i = [], a = [];
            return layui.each(t, function (t, l) {
                var n = [];
                "object" == typeof e ? (layui.each(e, function (e, a) {
                    0 == t && i.push(a || "")
                }), layui.each(r.clearCacheKey(l), function (e, t) {
                    n.push(t)
                })) : r.eachCols(e, function (e, a) {
                    a.field && "normal" == a.type && !a.hide && (0 == t && i.push(a.title || ""), n.push(l[a.field]))
                }), a.push(n.join(","))
            }), i.join(",") + "\r\n" + a.join("\r\n")
        }()), n.download = (a.title || "table_" + (a.index || "")) + "." + i, document.body.appendChild(n), n.click(), void document.body.removeChild(n))
    }, r.reload = function (e, i) {
        var a = c.config[e];
        return i = i || {}, a ? (i.data && i.data.constructor === Array && delete a.data, r.render(t.extend(!0, {}, a, i))) : o.error("The ID option was not found in the table instance")
    }, r.render = function (e) {
        var t = new M(e);
        return c.call(t)
    }, r.clearCacheKey = function (e) {
        return e = t.extend({}, e), delete e[r.config.checkName], delete e[r.config.indexName], e
    }, r.init(), e(s, r)
});