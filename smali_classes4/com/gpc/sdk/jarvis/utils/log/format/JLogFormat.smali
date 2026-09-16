.class public interface abstract Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;
.super Ljava/lang/Object;
.source "JLogFormat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/format/JLogFormat;",
        "",
        "getStackTraceString",
        "",
        "tr",
        "",
        "toFormatMessage",
        "entity",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public abstract toFormatMessage(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Ljava/lang/String;
.end method
