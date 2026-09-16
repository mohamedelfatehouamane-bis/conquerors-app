.class public interface abstract Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;


# virtual methods
.method public abstract getAccessKey()Ljava/lang/String;
.end method

.method public abstract getCommonWebViewRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGameId()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method
