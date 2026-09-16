.class public interface abstract Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController$QRCodeResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/qrcode/GPCQRCodeScannerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QRCodeResultListener"
.end annotation


# static fields
.field public static final CANCEL_PROGRAMME:I = 0x2

.field public static final CANCEL_USER:I = 0x1


# virtual methods
.method public abstract onCancel(I)V
.end method

.method public abstract onResult(Ljava/lang/String;)V
.end method
