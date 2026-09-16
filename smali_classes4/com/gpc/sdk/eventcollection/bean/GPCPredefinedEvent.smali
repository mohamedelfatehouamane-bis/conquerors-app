.class public final Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "importance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method


# virtual methods
.method public final getImportance()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setImportance(Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->importance:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/bean/GPCPredefinedEvent;->name:Ljava/lang/String;

    return-void
.end method
