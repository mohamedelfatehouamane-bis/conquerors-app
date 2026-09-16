.class public Lcom/gpc/operations/base/JavascriptCreater$Keyboard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/JavascriptCreater$KeyboardJavaScript;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/JavascriptCreater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Keyboard"
.end annotation


# instance fields
.field private keyboard:Lcom/gpc/operations/base/JavascriptCreater$KeyboardJavaScript;

.field final synthetic this$0:Lcom/gpc/operations/base/JavascriptCreater;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/JavascriptCreater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavascriptCreater$Keyboard;->this$0:Lcom/gpc/operations/base/JavascriptCreater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/gpc/operations/base/JavascriptCreaterV2$Keyboard;

    invoke-direct {p1}, Lcom/gpc/operations/base/JavascriptCreaterV2$Keyboard;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/base/JavascriptCreater$Keyboard;->keyboard:Lcom/gpc/operations/base/JavascriptCreater$KeyboardJavaScript;

    return-void
.end method


# virtual methods
.method public displayHeight(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$Keyboard;->keyboard:Lcom/gpc/operations/base/JavascriptCreater$KeyboardJavaScript;

    invoke-interface {v0, p1}, Lcom/gpc/operations/base/JavascriptCreater$KeyboardJavaScript;->displayHeight(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
