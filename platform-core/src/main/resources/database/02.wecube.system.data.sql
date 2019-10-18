delete from menu_items;
insert into menu_items (id,parent_id,code,description) values
(1,null,'JOBS','')
,(2,null,'DESIGNING','')
,(3,null,'IMPLEMENTATION','')
,(4,null,'MONITORING','')
,(5,null,'ADJUSTMENT','')
,(6,null,'INTELLIGENCE_OPS','')
,(7,null,'COLLABORATION','')
,(8,null,'ADMIN','')
,(101,1,'JOBS_INITIATOR','')
,(102,1,'JOBS_EXECUTOR','')
,(201,2,'DESIGNING_PLANNING','')
,(202,2,'DESIGNING_RESOURCE_PLANNING','')
,(203,2,'DESIGNING_APPLICATION_ARCHITECTURE','')
,(204,2,'DESIGNING_APPLICATION_DEPLOYMENT','')
,(205,2,'DESIGNING_CI_DATA_MANAGEMENT','')
,(206,2,'DESIGNING_CI_DATA_ENQUIRY','')
,(207,2,'DESIGNING_CI_INTEGRATED_QUERY_MANAGEMENT','')
,(208,2,'DESIGNING_CI_INTEGRATED_QUERY_EXECUTION','')
,(209,2,'DESIGNING_ENUM_MANAGEMENT','')
,(210,2,'DESIGNING_ENUM_ENQUIRY','')
,(301,3,'IMPLEMENTATION_ARTIFACT_MANAGEMENT','')
,(302,3,'IMPLEMENTATION_APPLICATION_DEPLOYMENT','')
,(303,3,'IMPLEMENTATION_BATCH_JOB','')
,(304,3,'IMPLEMENTATION_HIGH_RISK_INSTRUCTION_MANAGEMENT','')
,(305,3,'IMPLEMENTATION_WORKFLOW_EXECUTION','')
,(401,4,'MONITORING_BASIC_MONITOR_MANAGEMENT','')
,(402,4,'MONITORING_APPLICATION_MONITOR_MANAGEMENT','')
,(403,4,'MONITORING_CONTROL_PANEL_SETTING','')
,(404,4,'MONITORING_DISCOVERY','')
,(405,4,'MONITORING_CONSISTENCE_MANAGEMENT','')
,(501,5,'ADJUSTMENT_TENDENCY','')
,(502,5,'ADJUSTMENT_ROOT_CAUSE_INVESTIGATION','')
,(503,5,'ADJUSTMENT_EXPANSION','')
,(504,5,'ADJUSTMENT_RECOVERY','')
,(601,6,'INTELLIGENCE_OPS_MODELING','')
,(602,6,'INTELLIGENCE_OPS_DATA_SYNCHRONIZATION','')
,(701,7,'COLLABORATION_PLUGIN_MANAGEMENT','')
,(702,7,'COLLABORATION_WORKFLOW_ORCHESTRATION','')
,(703,7,'COLLABORATION_SERVICE_CHANNEL','')
,(801,8,'ADMIN_CMDB_MODEL_MANAGEMENT','')
,(802,8,'ADMIN_PERMISSION_MANAGEMENT','')
,(803,8,'ADMIN_BASE_DATA_MANAGEMENT','')
;

delete from role_menu;
insert into role_menu (role_id, menu_id) select 1, id from menu_items;

