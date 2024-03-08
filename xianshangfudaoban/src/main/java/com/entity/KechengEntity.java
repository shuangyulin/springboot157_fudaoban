package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 课程
 *
 * @author 
 * @email
 */
@TableName("kecheng")
public class KechengEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public KechengEntity() {

	}

	public KechengEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 课程名称
     */
    @TableField(value = "kecheng_name")

    private String kechengName;


    /**
     * 课程照片
     */
    @TableField(value = "kecheng_photo")

    private String kechengPhoto;


    /**
     * 课程类型
     */
    @TableField(value = "kecheng_types")

    private Integer kechengTypes;


    /**
     * 上课老师
     */
    @TableField(value = "kecheng_laoshi")

    private String kechengLaoshi;


    /**
     * 开课日期
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat
    @TableField(value = "kaike_time")

    private Date kaikeTime;


    /**
     * 上课时间
     */
    @TableField(value = "shangke_shijian")

    private String shangkeShijian;


    /**
     * 点击次数
     */
    @TableField(value = "kecheng_clicknum")

    private Integer kechengClicknum;


    /**
     * 是否上架
     */
    @TableField(value = "shangxia_types")

    private Integer shangxiaTypes;


    /**
     * 逻辑删除
     */
    @TableField(value = "kecheng_delete")

    private Integer kechengDelete;


    /**
     * 课程介绍
     */
    @TableField(value = "kecheng_content")

    private String kechengContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：课程名称
	 */
    public String getKechengName() {
        return kechengName;
    }


    /**
	 * 获取：课程名称
	 */

    public void setKechengName(String kechengName) {
        this.kechengName = kechengName;
    }
    /**
	 * 设置：课程照片
	 */
    public String getKechengPhoto() {
        return kechengPhoto;
    }


    /**
	 * 获取：课程照片
	 */

    public void setKechengPhoto(String kechengPhoto) {
        this.kechengPhoto = kechengPhoto;
    }
    /**
	 * 设置：课程类型
	 */
    public Integer getKechengTypes() {
        return kechengTypes;
    }


    /**
	 * 获取：课程类型
	 */

    public void setKechengTypes(Integer kechengTypes) {
        this.kechengTypes = kechengTypes;
    }
    /**
	 * 设置：上课老师
	 */
    public String getKechengLaoshi() {
        return kechengLaoshi;
    }


    /**
	 * 获取：上课老师
	 */

    public void setKechengLaoshi(String kechengLaoshi) {
        this.kechengLaoshi = kechengLaoshi;
    }
    /**
	 * 设置：开课日期
	 */
    public Date getKaikeTime() {
        return kaikeTime;
    }


    /**
	 * 获取：开课日期
	 */

    public void setKaikeTime(Date kaikeTime) {
        this.kaikeTime = kaikeTime;
    }
    /**
	 * 设置：上课时间
	 */
    public String getShangkeShijian() {
        return shangkeShijian;
    }


    /**
	 * 获取：上课时间
	 */

    public void setShangkeShijian(String shangkeShijian) {
        this.shangkeShijian = shangkeShijian;
    }
    /**
	 * 设置：点击次数
	 */
    public Integer getKechengClicknum() {
        return kechengClicknum;
    }


    /**
	 * 获取：点击次数
	 */

    public void setKechengClicknum(Integer kechengClicknum) {
        this.kechengClicknum = kechengClicknum;
    }
    /**
	 * 设置：是否上架
	 */
    public Integer getShangxiaTypes() {
        return shangxiaTypes;
    }


    /**
	 * 获取：是否上架
	 */

    public void setShangxiaTypes(Integer shangxiaTypes) {
        this.shangxiaTypes = shangxiaTypes;
    }
    /**
	 * 设置：逻辑删除
	 */
    public Integer getKechengDelete() {
        return kechengDelete;
    }


    /**
	 * 获取：逻辑删除
	 */

    public void setKechengDelete(Integer kechengDelete) {
        this.kechengDelete = kechengDelete;
    }
    /**
	 * 设置：课程介绍
	 */
    public String getKechengContent() {
        return kechengContent;
    }


    /**
	 * 获取：课程介绍
	 */

    public void setKechengContent(String kechengContent) {
        this.kechengContent = kechengContent;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Kecheng{" +
            "id=" + id +
            ", kechengName=" + kechengName +
            ", kechengPhoto=" + kechengPhoto +
            ", kechengTypes=" + kechengTypes +
            ", kechengLaoshi=" + kechengLaoshi +
            ", kaikeTime=" + kaikeTime +
            ", shangkeShijian=" + shangkeShijian +
            ", kechengClicknum=" + kechengClicknum +
            ", shangxiaTypes=" + shangxiaTypes +
            ", kechengDelete=" + kechengDelete +
            ", kechengContent=" + kechengContent +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
