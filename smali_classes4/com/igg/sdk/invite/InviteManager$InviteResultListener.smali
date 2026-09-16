.class public interface abstract Lcom/igg/sdk/invite/InviteManager$InviteResultListener;
.super Ljava/lang/Object;
.source "InviteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igg/sdk/invite/InviteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InviteResultListener"
.end annotation


# static fields
.field public static final CODE_FAIL:I = 0x0

.field public static final CODE_SUCCESS:I = 0x1


# virtual methods
.method public abstract onInviteResult(I)V
.end method
