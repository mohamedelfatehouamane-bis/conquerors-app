.class Lcom/gpc/sdk/jarvis/utils/JDeviceUtil$1;
.super Ljava/lang/Object;
.source "JDeviceUtil.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->getFPS()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 673
    sput-wide p1, Lcom/gpc/sdk/jarvis/utils/JDeviceUtil;->fps:J

    return-void
.end method
