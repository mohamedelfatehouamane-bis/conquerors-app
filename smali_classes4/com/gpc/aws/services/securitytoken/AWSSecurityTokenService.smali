.class public interface abstract Lcom/gpc/aws/services/securitytoken/AWSSecurityTokenService;
.super Ljava/lang/Object;
.source "AWSSecurityTokenService.java"


# virtual methods
.method public abstract assumeRole(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract assumeRoleWithSAML(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithSAMLRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract assumeRoleWithWebIdentity(Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract decodeAuthorizationMessage(Lcom/gpc/aws/services/securitytoken/model/DecodeAuthorizationMessageRequest;)Lcom/gpc/aws/services/securitytoken/model/DecodeAuthorizationMessageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getAccessKeyInfo(Lcom/gpc/aws/services/securitytoken/model/GetAccessKeyInfoRequest;)Lcom/gpc/aws/services/securitytoken/model/GetAccessKeyInfoResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
.end method

.method public abstract getCallerIdentity()Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getCallerIdentity(Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getFederationToken(Lcom/gpc/aws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/gpc/aws/services/securitytoken/model/GetFederationTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getSessionToken()Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getSessionToken(Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/gpc/aws/services/securitytoken/model/GetSessionTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setEndpoint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setRegion(Lcom/gpc/aws/regions/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
