package com.webank.wecube.platform.core.domain.plugin;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.webank.wecube.platform.core.domain.ResourceItem;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "plugin_instances")
public class PluginInstance {
    public static final String STATUS_RUNNING = "RUNNING";
    public static final String STATUS_REMOVED = "REMOVED";

    @Id
    @GeneratedValue
    private Integer id;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name = "package_id")
    private PluginPackage pluginPackage;

    @Column
    private String instanceName;

    @Column
    private String host;

    @Column
    private Integer port;

    @Column
    private Integer pluginMysqlInstanceResourceId;

    @Column
    private Integer s3BucketResourceId;

    @Column
    private Integer dockerInstanceResourceId;

    @Column
    private String status;

    public PluginInstance() {
    }

    public PluginInstance(Integer id, PluginPackage pluginPackage, String instanceName, String host, Integer port,
            String status) {
        this.id = id;
        this.pluginPackage = pluginPackage;
        this.instanceName = instanceName;
        this.host = host;
        this.port = port;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public PluginPackage getPluginPackage() {
        return pluginPackage;
    }

    public void setPluginPackage(PluginPackage pluginPackage) {
        this.pluginPackage = pluginPackage;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public static String getStatusRunning() {
        return STATUS_RUNNING;
    }

    public static String getStatusRemoved() {
        return STATUS_REMOVED;
    }

    public Integer getS3BucketResourceId() {
        return s3BucketResourceId;
    }

    public void setS3BucketResourceId(Integer s3BucketResourceId) {
        this.s3BucketResourceId = s3BucketResourceId;
    }

    public String getInstanceName() {
        return instanceName;
    }

    public void setInstanceName(String instanceName) {
        this.instanceName = instanceName;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public Integer getPort() {
        return port;
    }

    public void setPort(Integer port) {
        this.port = port;
    }

    public Integer getDockerInstanceResourceId() {
        return dockerInstanceResourceId;
    }

    public void setDockerInstanceResourceId(Integer dockerInstanceResourceId) {
        this.dockerInstanceResourceId = dockerInstanceResourceId;
    }

    public Integer getPluginMysqlInstanceResourceId() {
        return pluginMysqlInstanceResourceId;
    }

    public void setPluginMysqlInstanceResourceId(Integer pluginMysqlInstanceResourceId) {
        this.pluginMysqlInstanceResourceId = pluginMysqlInstanceResourceId;
    }

}