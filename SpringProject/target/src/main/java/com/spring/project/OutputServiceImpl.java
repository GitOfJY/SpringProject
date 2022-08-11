package com.spring.project;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.issue.IssueDAO;
import com.spring.issue.IssueDTO;

//진짜 게시판이면 여기서 페이징, 검색, 출력 조작, 다 여기서 한다.
@Service
public class OutputServiceImpl implements OutputService {

	@Autowired
	private OutputDAO dao;

	@Autowired
	private IssueDAO idao;

	@Override
	public List<OutputDTO> alist() {
		return dao.alist();
	}

	@Override
	public List<OutputDTO> assignment(String projectseq) {
		return dao.assignment(projectseq);
	}

	@Override
	public List<OutputDTO> projectlist() {
		return dao.projectlist();
	}

	@Override
	public List<OutputDTO> worklist() {
		return dao.worklist();
	}

	@Override
	public OutputDTO info(String fileseq) {
		return dao.info(fileseq);
	}

	@Override
	public List<OutputDTO> list(String projectseq) {
		return dao.list(projectseq);
	}

	@Override
	public int del(String outputseq) {
		return dao.del(outputseq);
	}

	@Override
	public OutputDTO seq(String projectseq) {
		return dao.seq(projectseq);
	}

	@Override
	public List<IssueDTO> issue(String projectseq) {
		return idao.issue(projectseq);
	}
	
	@Override
	public int edit(OutputDTO odto) {
		return dao.edit(odto);
	}

	@Override
	public List<Map<String, String>> resultalist(Map<String, Object> param) {
		return dao.resultalist(param);
	}
	
	@Override
	public List<Map<String, String>> resultlist(Map<String, Object> param) {
		return dao.resultlist(param);
	}
	
	@Override
	public List<Map<String, String>> issueResultList(Map<String, Object> param) {
		return dao.issueResultList(param);
	}
	
	@Override
	public int add(OutputDTO dto) {
		return dao.add(dto);
	}
}