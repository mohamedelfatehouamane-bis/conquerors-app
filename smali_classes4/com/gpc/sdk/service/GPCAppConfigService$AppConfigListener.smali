.class public interface abstract Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/GPCAppConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppConfigListener"
.end annotation


# virtual methods
.method public abstract onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onAppConfigLoadFinished(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
.end method
