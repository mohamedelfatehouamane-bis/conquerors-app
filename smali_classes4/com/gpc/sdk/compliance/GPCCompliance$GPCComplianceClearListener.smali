.class public interface abstract Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/GPCCompliance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GPCComplianceClearListener"
.end annotation


# virtual methods
.method public abstract didFailback(Ljava/lang/String;)V
.end method

.method public abstract onAdult(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;)V
.end method

.method public abstract onError(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V
.end method

.method public abstract onGuest(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V
.end method

.method public abstract onMinor(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V
.end method

.method public abstract onPostponing(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;)V
.end method

.method public abstract onVerifying(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V
.end method
