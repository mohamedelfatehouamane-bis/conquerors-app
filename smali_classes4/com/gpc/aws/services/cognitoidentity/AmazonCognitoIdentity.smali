.class public interface abstract Lcom/gpc/aws/services/cognitoidentity/AmazonCognitoIdentity;
.super Ljava/lang/Object;
.source "AmazonCognitoIdentity.java"


# virtual methods
.method public abstract createIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolRequest;)Lcom/gpc/aws/services/cognitoidentity/model/CreateIdentityPoolResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteIdentities(Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentitiesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/DeleteIdentityPoolRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeIdentity(Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityPoolRequest;)Lcom/gpc/aws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
.end method

.method public abstract getCredentialsForIdentity(Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getId(Lcom/gpc/aws/services/cognitoidentity/model/GetIdRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetIdResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getIdentityPoolRoles(Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetIdentityPoolRolesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getOpenIdToken(Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getOpenIdTokenForDeveloperIdentity(Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listIdentities(Lcom/gpc/aws/services/cognitoidentity/model/ListIdentitiesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/ListIdentitiesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listIdentityPools(Lcom/gpc/aws/services/cognitoidentity/model/ListIdentityPoolsRequest;)Lcom/gpc/aws/services/cognitoidentity/model/ListIdentityPoolsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listTagsForResource(Lcom/gpc/aws/services/cognitoidentity/model/ListTagsForResourceRequest;)Lcom/gpc/aws/services/cognitoidentity/model/ListTagsForResourceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract lookupDeveloperIdentity(Lcom/gpc/aws/services/cognitoidentity/model/LookupDeveloperIdentityRequest;)Lcom/gpc/aws/services/cognitoidentity/model/LookupDeveloperIdentityResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract mergeDeveloperIdentities(Lcom/gpc/aws/services/cognitoidentity/model/MergeDeveloperIdentitiesRequest;)Lcom/gpc/aws/services/cognitoidentity/model/MergeDeveloperIdentitiesResult;
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

.method public abstract setIdentityPoolRoles(Lcom/gpc/aws/services/cognitoidentity/model/SetIdentityPoolRolesRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
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

.method public abstract tagResource(Lcom/gpc/aws/services/cognitoidentity/model/TagResourceRequest;)Lcom/gpc/aws/services/cognitoidentity/model/TagResourceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract unlinkDeveloperIdentity(Lcom/gpc/aws/services/cognitoidentity/model/UnlinkDeveloperIdentityRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract unlinkIdentity(Lcom/gpc/aws/services/cognitoidentity/model/UnlinkIdentityRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract untagResource(Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceRequest;)Lcom/gpc/aws/services/cognitoidentity/model/UntagResourceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract updateIdentityPool(Lcom/gpc/aws/services/cognitoidentity/model/UpdateIdentityPoolRequest;)Lcom/gpc/aws/services/cognitoidentity/model/UpdateIdentityPoolResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method
