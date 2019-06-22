/** layui-v2.4.1 MIT License By https://www.layui.com */
;layui.define("jquery", function (e) {
    "use strict";
    var i = layui.jquery, t = {
            config: {}, index: layui.slider ? layui.slider.index + 1e4 : 0, set: function (e) {
                var t = this;
                return t.config = i.extend({}, t.config, e), t
            }, on: function (e, i) {
                return layui.onevent.call(this, n, e, i)
            }
        }, a = function () {
            var e = this, i = e.config;
            return {
                setValue: function (i, t) {
                    return e.slide("set", i, t || 0)
                }, config: i
            }
        }, n = "slider", l = "layui-disabled", s = "layui-slider", r = "layui-slider-bar", o = "layui-slider-wrap",
        d = "layui-slider-wrap-btn", u = "layui-slider-tips", c = "layui-slider-input", v = "layui-slider-input-txt",
        m = "layui-slider-input-btn", p = "layui-slider-hover", f = function (e) {
            var a = this;
            a.index = ++t.index, a.config = i.extend({}, a.config, t.config, e), a.render()
        };
    f.prototype.config = {
        type: "default",
        min: 0,
        max: 100,
        value: 0,
        step: 1,
        showstep: !1,
        tips: !0,
        input: !1,
        range: !1,
        height: 200,
        disabled: !1,
        theme: "#009688"
    }, f.prototype.render = function () {
        var e = this, t = e.config;
        if (t.min = t.min < 0 ? 0 : t.min, t.range) {
            t.value = "object" == typeof t.value ? t.value : [t.min, t.value];
            var a = Math.min(t.value[0], t.value[1]), n = Math.max(t.value[0], t.value[1]);
            t.value[0] = a > t.min ? a : t.min, t.value[1] = n > t.min ? n : t.min, t.value[0] = t.value[0] > t.max ? t.max : t.value[0], t.value[1] = t.value[1] > t.max ? t.max : t.value[1];
            var r = Math.floor((t.value[0] - t.min) / (t.max - t.min) * 100),
                c = Math.floor((t.value[1] - t.min) / (t.max - t.min) * 100), m = c - r + "%";
            r += "%", c += "%"
        } else {
            t.value = "object" == typeof t.value ? Math.min(t.value[0], t.value[1]) : t.value, t.value = t.value > t.min ? t.value : t.min;
            var m = Math.floor((t.value - t.min) / (t.max - t.min) * 100) + "%"
        }
        var p = t.disabled ? "#c2c2c2" : t.theme,
            f = '<div class="layui-slider ' + ("vertical" === t.type ? "layui-slider-vertical" : "") + '">' + (t.tips ? '<div class="layui-slider-tips"></div><span></span>' : "") + '<div class="layui-slider-bar" style="background:' + p + "; " + ("vertical" === t.type ? "height" : "width") + ":" + m + ";" + ("vertical" === t.type ? "bottom" : "left") + ":" + (r || 0) + ';"></div><div class="layui-slider-wrap" style="' + ("vertical" === t.type ? "bottom" : "left") + ":" + (r || m) + ';"><div class="layui-slider-wrap-btn" style="border: 2px solid ' + p + ';"></div></div>' + (t.range ? '<div class="layui-slider-wrap" style="' + ("vertical" === t.type ? "bottom" : "left") + ":" + c + ';"><div class="layui-slider-wrap-btn" style="border: 2px solid ' + p + ';"></div></div>' : "") + "</div>",
            h = i(t.elem), y = h.next("." + s);
        if (y[0] && y.remove(), e.elemTemp = i(f), t.range ? (e.elemTemp.find("." + o).eq(0).data("value", t.value[0]), e.elemTemp.find("." + o).eq(1).data("value", t.value[1])) : e.elemTemp.find("." + o).data("value", t.value), h.html(e.elemTemp), "vertical" === t.type && e.elemTemp.height(t.height + "px"), t.showstep) {
            for (var g = (t.max - t.min) / t.step, b = "", x = 1; x < g + 1; x++) {
                var T = 100 * x / g;
                T < 100 && (b += '<div class="layui-slider-step" style="' + ("vertical" === t.type ? "bottom" : "left") + ":" + T + '%"></div>')
            }
            e.elemTemp.append(b)
        }
        if (t.input && !t.range) {
            var w = i('<div class="layui-slider-input layui-input"><div class="layui-slider-input-txt"><input type="text" class="layui-input"></div><div class="layui-slider-input-btn"><i class="layui-icon layui-icon-up"></i><i class="layui-icon layui-icon-down"></i></div></div>');
            h.css("position", "relative"), h.append(w), h.find("." + v).children("input").val(t.value), "vertical" === t.type ? w.css({
                left: 0,
                top: -48
            }) : e.elemTemp.css("margin-right", w.outerWidth() + 15)
        }
        t.disabled ? (e.elemTemp.addClass(l), e.elemTemp.find("." + d).addClass(l)) : e.slide(), e.elemTemp.find("." + d).on("mouseover", function () {
            var a = "vertical" === t.type ? t.height : e.elemTemp[0].offsetWidth, n = e.elemTemp.find("." + o),
                l = "vertical" === t.type ? a - i(this).parent()[0].offsetTop - n.height() : i(this).parent()[0].offsetLeft,
                s = l / a * 100, r = i(this).parent().data("value"), d = t.setTips ? t.setTips(r) : r;
            e.elemTemp.find("." + u).html(d), "vertical" === t.type ? (e.elemTemp.find("." + u).css({
                bottom: s + "%",
                "margin-bottom": "20px",
                display: "inline-block"
            }), e.elemTemp.children("span").css({
                bottom: s + "%",
                "margin-bottom": "8px",
                display: "inline-block"
            })) : (e.elemTemp.find("." + u).css({
                left: s + "%",
                display: "inline-block"
            }), e.elemTemp.children("span").css({left: s + "%", display: "inline-block"}))
        }).on("mouseout", function () {
            e.elemTemp.find("." + u).css("display", "none"), e.elemTemp.children("span").css("display", "none")
        })
    }, f.prototype.slide = function (e, t, a) {
        var n = this, l = n.config, s = n.elemTemp, f = function () {
                return "vertical" === l.type ? l.height : s[0].offsetWidth
            }, h = s.find("." + o), y = s.next("." + c), g = y.children("." + v).children("input").val(),
            b = 100 / ((l.max - l.min) / Math.ceil(l.step)), x = function (e, i) {
                e = Math.ceil(e) * b > 100 ? Math.ceil(e) * b : Math.round(e) * b, e = e > 100 ? 100 : e, h.eq(i).css("vertical" === l.type ? "bottom" : "left", e + "%");
                var t = T(h[0].offsetLeft), a = l.range ? T(h[1].offsetLeft) : 0;
                "vertical" === l.type ? (s.find("." + u).css({
                    bottom: e + "%",
                    "margin-bottom": "20px"
                }), s.children("span").css({
                    bottom: e + "%",
                    "margin-bottom": "8px"
                }), t = T(f() - h[0].offsetTop - h.height()), a = l.range ? T(f() - h[1].offsetTop - h.height()) : 0) : (s.find("." + u).css("left", e + "%"), s.children("span").css("left", e + "%")), t = t > 100 ? 100 : t, a = a > 100 ? 100 : a;
                var n = Math.min(t, a), o = Math.abs(t - a);
                "vertical" === l.type ? s.find("." + r).css({
                    height: o + "%",
                    bottom: n + "%"
                }) : s.find("." + r).css({width: o + "%", left: n + "%"});
                var d = l.min + Math.round((l.max - l.min) * e / 100);
                if (g = d, y.children("." + v).children("input").val(g), h.eq(i).data("value", d), d = l.setTips ? l.setTips(d) : d, s.find("." + u).html(d), l.range) {
                    var c = [h.eq(0).data("value"), h.eq(1).data("value")];
                    c[0] > c[1] && c.reverse()
                }
                l.change && l.change(l.range ? c : d)
            }, T = function (e) {
                var i = e / f() * 100 / b, t = Math.round(i) * b;
                return e == f() && (t = Math.ceil(i) * b), t
            }, w = i(['<div class="layui-auxiliar-moving" id="LAY-slider-moving"></div'].join("")), M = function (e, t) {
                var a = function () {
                    t && t(), w.remove()
                };
                i("#LAY-slider-moving")[0] || i("body").append(w), w.on("mousemove", e), w.on("mouseup", a).on("mouseleave", a)
            };
        if ("set" === e) return x(t, a);
        s.find("." + d).each(function (e) {
            var t = i(this);
            t.on("mousedown", function (i) {
                i = i || window.event;
                var a = t.parent()[0].offsetLeft, n = i.clientX;
                "vertical" === l.type && (a = f() - t.parent()[0].offsetTop - h.height(), n = i.clientY);
                var r = function (i) {
                    i = i || window.event;
                    var r = a + ("vertical" === l.type ? n - i.clientY : i.clientX - n);
                    r < 0 && (r = 0), r > f() && (r = f());
                    var o = r / f() * 100 / b;
                    x(o, e), t.addClass(p), s.find("." + u).show(), s.children("span").show(), i.preventDefault()
                }, o = function () {
                    t.removeClass(p), s.find("." + u).hide(), s.children("span").hide()
                };
                M(r, o)
            })
        }), s.on("click", function (e) {
            var t = i("." + d);
            if (!t.is(event.target) && 0 === t.has(event.target).length && t.length) {
                var a,
                    n = "vertical" === l.type ? f() - e.clientY + i(this).offset().top : e.clientX - i(this).offset().left;
                n < 0 && (n = 0), n > f() && (n = f());
                var s = n / f() * 100 / b;
                a = l.range ? "vertical" === l.type ? Math.abs(n - parseInt(i(h[0]).css("bottom"))) > Math.abs(n - parseInt(i(h[1]).css("bottom"))) ? 1 : 0 : Math.abs(n - h[0].offsetLeft) > Math.abs(n - h[1].offsetLeft) ? 1 : 0 : 0, x(s, a), e.preventDefault()
            }
        }), y.hover(function () {
            var e = i(this);
            e.children("." + m).fadeIn("fast")
        }, function () {
            var e = i(this);
            e.children("." + m).fadeOut("fast")
        }), y.children("." + m).children("i").each(function (e) {
            i(this).on("click", function () {
                g = 1 == e ? g - b < l.min ? l.min : g - b : Number(g) + b > l.max ? l.max : Number(g) + b;
                var i = (g - l.min) / (l.max - l.min) * 100 / b;
                x(i, 0)
            })
        });
        var k = function () {
            var e = this.value;
            e = isNaN(e) ? 0 : e, e = e < l.min ? l.min : e, e = e > l.max ? l.max : e, this.value = e;
            var i = (e - l.min) / (l.max - l.min) * 100 / b;
            x(i, 0)
        };
        y.children("." + v).children("input").on("keydown", function (e) {
            13 === e.keyCode && (e.preventDefault(), k.call(this))
        }).on("change", k)
    }, f.prototype.events = function () {
        var e = this;
        e.config
    }, t.render = function (e) {
        var i = new f(e);
        return a.call(i)
    }, e(n, t)
});