.class public Lcom/gpc/operations/utils/Constant$Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/utils/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "prompt_upload_failure"

.field public static final IMAGE_TOO_LARGE:Ljava/lang/String; = "37926"

.field public static final IMAGE_TOO_LARGE_KEY:Ljava/lang/String; = "prompt_upload_size_exceed"

.field public static final VIDEO_TOO_LARGE:Ljava/lang/String; = "37927"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "37926"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    const-string p0, "prompt_upload_size_exceed"

    return-object p0

    .line 4
    :cond_0
    const-string p0, "prompt_upload_failure"

    return-object p0
.end method
