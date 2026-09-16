.class public final enum Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;
.super Ljava/lang/Enum;
.source "SecurityTokenServiceActions.java"

# interfaces
.implements Lcom/gpc/aws/auth/policy/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;",
        ">;",
        "Lcom/gpc/aws/auth/policy/Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AllSecurityTokenServiceActions:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AssumeRole:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AssumeRoleWithSAML:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum AssumeRoleWithWebIdentity:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum DecodeAuthorizationMessage:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetAccessKeyInfo:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetCallerIdentity:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetFederationToken:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

.field public static final enum GetSessionToken:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 26
    new-instance v0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v1, "sts:*"

    const-string v2, "AllSecurityTokenServiceActions"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->AllSecurityTokenServiceActions:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 29
    new-instance v1, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v2, "sts:AssumeRole"

    const-string v4, "AssumeRole"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRole:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 32
    new-instance v2, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v4, "sts:AssumeRoleWithSAML"

    const-string v6, "AssumeRoleWithSAML"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRoleWithSAML:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 35
    new-instance v4, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v6, "sts:AssumeRoleWithWebIdentity"

    const-string v8, "AssumeRoleWithWebIdentity"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->AssumeRoleWithWebIdentity:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 38
    new-instance v6, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v8, "sts:DecodeAuthorizationMessage"

    const-string v10, "DecodeAuthorizationMessage"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->DecodeAuthorizationMessage:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 41
    new-instance v8, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v10, "sts:GetAccessKeyInfo"

    const-string v12, "GetAccessKeyInfo"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->GetAccessKeyInfo:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 44
    new-instance v10, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v12, "sts:GetCallerIdentity"

    const-string v14, "GetCallerIdentity"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->GetCallerIdentity:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 47
    new-instance v12, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v14, "sts:GetFederationToken"

    const/16 v16, 0x0

    const-string v3, "GetFederationToken"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->GetFederationToken:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    .line 50
    new-instance v3, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const-string v14, "sts:GetSessionToken"

    const/16 v18, 0x7

    const-string v5, "GetSessionToken"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->GetSessionToken:Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    const/16 v5, 0x9

    .line 24
    new-array v5, v5, [Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    aput-object v0, v5, v16

    aput-object v1, v5, v17

    aput-object v2, v5, v19

    aput-object v4, v5, v9

    aput-object v6, v5, v11

    aput-object v8, v5, v13

    aput-object v10, v5, v15

    aput-object v12, v5, v18

    aput-object v3, v5, v7

    sput-object v5, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->$VALUES:[Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;
    .locals 1

    .line 24
    const-class v0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;
    .locals 1

    .line 24
    sget-object v0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->$VALUES:[Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    invoke-virtual {v0}, [Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;

    return-object v0
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/gpc/aws/auth/policy/actions/SecurityTokenServiceActions;->action:Ljava/lang/String;

    return-object v0
.end method
