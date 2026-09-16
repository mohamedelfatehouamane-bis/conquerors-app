.class public Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo$Builder;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private negativeBtnText:Ljava/lang/String;

.field private positiveBtnText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->title:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->message:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->positiveBtnText:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->negativeBtnText:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->negativeBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->positiveBtnText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/permision/ui/GPCPermissionDialogInfo;->title:Ljava/lang/String;

    return-object v0
.end method
