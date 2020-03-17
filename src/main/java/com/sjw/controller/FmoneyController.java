package com.sjw.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.sjw.entity.Fmoney;
import com.sjw.entity.Qmoney;
import com.sjw.service.FmoneyService;

@Controller
public class FmoneyController {

	@Autowired
	private FmoneyService fmoneyService;
	
	@RequestMapping("list")
	public String list(Model m,Fmoney fmoney,@RequestParam(defaultValue="1")Integer pageNum,
					@RequestParam(defaultValue="2")Integer pageSize){
		PageInfo<Fmoney> info = fmoneyService.select(fmoney,pageNum,pageSize);
		
		m.addAttribute("info",info);
		
		return "list";
	}
	
	//去新增
	@RequestMapping("add")
	public String add(){
		
		return "add";
	}
	
	//添加
	@RequestMapping("toAdd")
	public String toAdd(Fmoney fmoney,MultipartFile file) throws IllegalStateException, IOException{
		//判断是上传了图片
		if(!file.isEmpty()){
			String filepath="d:/pic/";
			String filename = file.getOriginalFilename();
			String newFileName = UUID.randomUUID().toString()+filename.substring(filename.lastIndexOf("."));
			
			  
			File f = new File(filepath,newFileName);
			file.transferTo(f);
			
			fmoney.setFpic(newFileName);
		}
		
		//去添加
		fmoneyService.add(fmoney);
		
		
		return "redirect:list";
	}
	
	//修改回显
	@RequestMapping("update")
	public String update(Model m,Integer id){
		
		Fmoney fmoney = fmoneyService.selectOne(id);
		
		m.addAttribute("f",fmoney);
		
		return "update";
	}
	
	//去修改
	@RequestMapping("toUpdate")
	public String toUpdate(Fmoney fmoney,MultipartFile file) throws IllegalStateException, IOException{
		//判断是上传了图片
		if(!file.isEmpty()){
			String filepath="d:/pic/";
			String filename = file.getOriginalFilename();
			String newFileName = UUID.randomUUID().toString()+filename.substring(filename.lastIndexOf("."));
			
			  
			File f = new File(filepath,newFileName);
			file.transferTo(f);
			
			fmoney.setFpic(newFileName);
		}
		
		//去修改
		fmoneyService.update(fmoney);
		
		
		return "redirect:list";
	}
	
	@ResponseBody
	@RequestMapping("qmoney")
	public Object qmoney(){
		List<Qmoney> list = fmoneyService.selectq();
		return list;
	}
}
