.class public final Lcom/gpc/operations/base/BaseWebActivity$initKeyboard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/utils/KeyboardUtils$KeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/base/BaseWebActivity;->initKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/operations/base/BaseWebActivity;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/BaseWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/operations/base/BaseWebActivity$initKeyboard$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardVisible(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseWebActivity$initKeyboard$1;->this$0:Lcom/gpc/operations/base/BaseWebActivity;

    invoke-virtual {v0}, Lcom/gpc/operations/base/BaseWebActivity;->getJsHandler()Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onKeyboardVisible(ZI)V

    :cond_0
    return-void
.end method
