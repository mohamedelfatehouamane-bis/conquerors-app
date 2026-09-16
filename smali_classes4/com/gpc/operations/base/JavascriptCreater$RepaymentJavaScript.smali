.class public interface abstract Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/JavascriptCreater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RepaymentJavaScript"
.end annotation


# virtual methods
.method public abstract payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract payItemsLoadCallback(ILorg/json/JSONArray;I)Ljava/lang/String;
.end method

.method public abstract paySuccessCallback()Ljava/lang/String;
.end method
