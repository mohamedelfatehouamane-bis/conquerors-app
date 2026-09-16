.class public Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private negativeBtnText:Ljava/lang/String;

.field private positiveBtnText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;-><init>(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$a;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->access$102(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->access$202(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->positiveBtnText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->access$302(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->negativeBtnText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;->access$402(Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public negativeBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->negativeBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public positiveBtnText(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->positiveBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/permision/ui/GPCPermissionDialogInfo$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
