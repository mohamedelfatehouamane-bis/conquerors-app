.class public Lcom/gpc/operations/base/JavascriptCreaterV2$Keyboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/JavascriptCreater$KeyboardJavaScript;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/JavascriptCreaterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyboard"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayHeight(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->getKeyboardDisplayHeightResponserJS(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
