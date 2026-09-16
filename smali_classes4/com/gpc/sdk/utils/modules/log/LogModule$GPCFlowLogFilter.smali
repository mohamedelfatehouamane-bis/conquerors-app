.class public Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/jarvis/utils/log/filter/JLogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/log/LogModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPCFlowLogFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/utils/modules/log/LogModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/log/LogModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;->this$0:Lcom/gpc/sdk/utils/modules/log/LogModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValid(Lcom/gpc/sdk/jarvis/utils/log/bean/JLogEntity;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;->this$0:Lcom/gpc/sdk/utils/modules/log/LogModule;

    iget-object p1, p1, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/log/LogModule$GPCFlowLogFilter;->this$0:Lcom/gpc/sdk/utils/modules/log/LogModule;

    iget-object p1, p1, Lcom/gpc/sdk/utils/modules/log/LogModule;->profiling:Lcom/gpc/sdk/utils/modules/log/bean/Profiling;

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/Profiling;->getFlowLog()Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/log/bean/FlowLog;->isOpen()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
