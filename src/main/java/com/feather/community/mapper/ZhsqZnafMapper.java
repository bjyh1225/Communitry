package com.feather.community.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * 社区资产Mapper接口
 *
 * @author fancy
 * @date 2020-05-14
 */
public interface ZhsqZnafMapper {
    public List<Map> getCountSb(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getYcList(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getCountMj(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getMjjcList(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getCountZj(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getZjjcList(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getCountDg(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getDgjcList(@Param("sqid") String sqid, @Param("xqid") String xqid);

    public List<Map> getSxtList(@Param("wzlx") String wzlx, @Param("sqid") String sqid, @Param("xqid") String xqid);
}