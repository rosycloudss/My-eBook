package com.my_ebook.controller.bg;


import com.alibaba.fastjson.JSONObject;
import com.my_ebook.entity.Category;
import com.my_ebook.service.CategoryService;
import com.my_ebook.vo.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller("bgCategoryController")
@RequestMapping("/bg/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    /**
     * 添加分类信息
     *
     * @param category
     */
    @ResponseBody
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public JSONObject add(@RequestBody Category category) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        System.out.println(category);
        if (category != null && categoryService.add(category) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }

    /**
     * 删除分类及其子类信息
     *
     * @param map
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public JSONObject delete(@RequestBody Map<String, Integer> map) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        Integer categoryId = map.get("categoryId");
        if (categoryId != null && categoryService.delete(categoryId) > 0) {
            categoryService.deleteByParentId(categoryId);
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;

    }

    /**
     * 查询所有图书分类
     *
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model) {
        Page<Category> categoryPage = categoryService.findAllParentCategory();
        System.out.println(categoryPage);
        model.addAttribute("categoryPage", categoryPage);
        return "/bg/category-list";
    }

    /**
     * 获取一个分类的信息
     *
     * @param op         为1 时 跳转到订单添加页面，为其他值时跳转到订单修改页面
     * @param categoryId
     * @param model
     * @return
     */
    @RequestMapping("/getOne")
    public String getOne(Integer op, Integer categoryId, Model model) {
        op = (op != null ? op : 0);
        System.out.println(categoryId);
        if (categoryId != null) {
            Category category = categoryService.findById(categoryId);
            System.out.println(category);
            model.addAttribute("category", category);
        }
        switch (op) {
            case 1: {
                return "/bg/category-add";
            }
            default: {
                Page<Category> categoryPage = categoryService.findAllParentCategory();
                model.addAttribute("categoryPage", categoryPage);
                return "/bg/category-edit";
            }
        }
    }

    /**
     * 修改订单信息
     *
     * @param category
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public JSONObject edit(@RequestBody Category category) {
        JSONObject jsonObject = new JSONObject();
        int result = 0;
        System.out.println(category);
        if (category != null && categoryService.update(category) > 0) {
            result = 1;
        }
        jsonObject.put("result", result);
        return jsonObject;
    }
}


