<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
        <div class="span6">
			<input type="hidden" name="e_id" value="${bean.e_id }">
			<input type="hidden" name="method" value="update">
            <div class="control-group">
                <label for="" class="control-label">公司/组织名称</label>
                <div class="controls">
                    <input type="text" id="company" name="e_name" value="${bean.e_name }" class="input-large" placeholder="公司/组织名称" name="company">
                </div>
            </div>
            <div class="control-group input-daterange">
                <label for="" class="control-label">起止时间</label>
                <div class="controls date">
                    <input type="date" class="input-medium" name="e_starttime" value="${bean.e_starttime }"><span>-</span>
                    <input type="date" class="input-medium" name="e_endtime" value="${bean.e_endtime }">
                </div>
            </div>
        </div>
        <div class="span6">
            <div class="control-group">
                <label for="" class="control-label">职位头衔</label>
                <div class="controls">
                    <input type="text" id="job" name="e_major" value="${bean.e_major }" class="input-large" placeholder="如：Java工程师" name="job">
                </div>
            </div>
            <div class="control-group">
                <label for="" class="control-label">工作城市</label>
                <div class="controls">
                    <input type="text" id="work-city" name="e_city" value="${bean.e_city }" class="input-large" placeholder="如：上海" name="work-city">
                </div>
            </div>

        </div>
        <div class="control-group">
            <label for="" class="control-label">相关技术</label>
            <div class="controls">
                <input type="text" placeholder="标签，如:php可使用逗号，分号； 来分隔" name="e_skill" value="${bean.e_skill }" class="input-xfat input-xxlarge" id="tags">
            </div>
        </div>
        <div class="control-group">
            <label for="" class="control-label">职位描述</label>
            <div class="controls">
                <textarea rows="3" class="input-block-level" name="e_desc" placeholder="在职期间做了什么工作，解决了什么问题，做了什么贡献？">${bean.e_desc }</textarea>
            </div>
        </div>
    
