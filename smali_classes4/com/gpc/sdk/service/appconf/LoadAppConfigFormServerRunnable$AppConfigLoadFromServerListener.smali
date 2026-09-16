.class public interface abstract Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$AppConfigLoadFromServerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppConfigLoadFromServerListener"
.end annotation


# virtual methods
.method public abstract onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V
.end method

.method public abstract onAppConfigLoadSuccess(Lcom/gpc/sdk/service/appconf/GPCAppConfData;J)V
.end method
