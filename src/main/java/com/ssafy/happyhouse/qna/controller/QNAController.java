package com.ssafy.happyhouse.qna.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.qna.model.dto.QNA;
import com.ssafy.happyhouse.qna.model.service.QNAService;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.SwaggerDefinition;


@RestController
@RequestMapping("/qna")
public class QNAController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SUCCESS = "success";
	@Autowired
    private QNAService qnaService;
	
	@GetMapping("")
	public ResponseEntity<List<QNA>> selectAll(@RequestParam Map<String,String> query) {
		List<QNA> qnas = qnaService.selectQNAAll(query);
		System.out.println(query);
		System.out.println(qnas.size());
		return new ResponseEntity<List<QNA>>(qnas, HttpStatus.OK);
	}
	
//	@GetMapping("/qna")
//	public String insert(@ResponseBody QNA qna) {
//		
//		return "qna/qna-insert";
//	}
	
	@PostMapping("")
	@ApiOperation(value = "이런")
	public ResponseEntity<?> insert(@RequestBody QNA qna) {
		System.out.println("insert..."+qna.toString());
		qnaService.insertQNA(qna);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
//	@GetMapping("/qna")
//	public String update(@RequestParam String qnaNo, Model model) {
//		int qnaNo1 = Integer.parseInt(qnaNo);
//		QNA qna = qnaService.selectQNA(qnaNo1);
//		model.addAttribute(qna);
//		return "qna/qna-update";
//	}

	@PutMapping("")
	private ResponseEntity<?> update(@RequestBody QNA qna) {
		qnaService.updateQNA(qna);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}

	@PutMapping("/answer")
	private ResponseEntity<?> insertAnswer(@RequestBody Map<String, String> qna) {
		qnaService.insertAnswer(qna);
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
	@DeleteMapping("/{qnaNo}")
	private ResponseEntity<?> delete(@PathVariable String qnaNo) {
		qnaService.removeQNA(Integer.parseInt(qnaNo));
		return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
	}
	
	@GetMapping("/{qnaNo}")
	public ResponseEntity<QNA> select(@PathVariable String qnaNo) {
		int qnaNo1 = Integer.parseInt(qnaNo);
		QNA qna = qnaService.selectQNA(qnaNo1);
		return new ResponseEntity<QNA>(qna, HttpStatus.OK);
	}

}
