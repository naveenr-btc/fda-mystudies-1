/*
 * Copyright 2020 Google LLC
 *
 * Use of this source code is governed by an MIT-style
 * license that can be found in the LICENSE file or at
 * https://opensource.org/licenses/MIT.
 */

package com.google.cloud.healthcare.fdamystudies.auditlog.service;

import com.google.cloud.healthcare.fdamystudies.auditlog.mapper.AuditLogEventMapper;
import com.google.cloud.healthcare.fdamystudies.auditlog.model.AuditLogEventEntity;
import com.google.cloud.healthcare.fdamystudies.auditlog.repository.AuditLogEventRepository;
import com.google.cloud.healthcare.fdamystudies.beans.AuditLogEventRequest;
import com.google.cloud.healthcare.fdamystudies.beans.AuditLogEventResponse;
import com.google.cloud.healthcare.fdamystudies.service.BaseServiceImpl;
import org.slf4j.ext.XLogger;
import org.slf4j.ext.XLoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuditLogEventServiceImpl extends BaseServiceImpl implements AuditLogEventService {

  private XLogger logger = XLoggerFactory.getXLogger(AuditLogEventServiceImpl.class.getName());

  @Autowired private AuditLogEventRepository repository;

  @Value("${auditlog.platform-version}")
  private String platformVersion;

  @Override
  @Transactional
  public AuditLogEventResponse saveAuditLogEvent(AuditLogEventRequest auditRequest) {
    logger.entry("begin saveAuditLogEvent()");
    AuditLogEventEntity aleEntity = AuditLogEventMapper.fromAuditLogEventRequest(auditRequest);
    aleEntity.setPlatformVersion(platformVersion);

    aleEntity = repository.saveAndFlush(aleEntity);

    AuditLogEventResponse aleResponse = AuditLogEventMapper.toAuditLogEventResponse(aleEntity);
    logger.exit(String.format("eventId=%s", aleResponse.getEventId()));
    return aleResponse;
  }
}
