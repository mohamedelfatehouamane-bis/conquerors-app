.class public final enum Lcom/gpc/aws/logging/LogFactory$Level;
.super Ljava/lang/Enum;
.source "LogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/logging/LogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/logging/LogFactory$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum ALL:Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum DEBUG:Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum ERROR:Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum INFO:Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum OFF:Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum TRACE:Lcom/gpc/aws/logging/LogFactory$Level;

.field public static final enum WARN:Lcom/gpc/aws/logging/LogFactory$Level;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 115
    new-instance v0, Lcom/gpc/aws/logging/LogFactory$Level;

    const/high16 v1, -0x80000000

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/aws/logging/LogFactory$Level;->ALL:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 116
    new-instance v1, Lcom/gpc/aws/logging/LogFactory$Level;

    const-string v2, "TRACE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gpc/aws/logging/LogFactory$Level;->TRACE:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 117
    new-instance v2, Lcom/gpc/aws/logging/LogFactory$Level;

    const-string v5, "DEBUG"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gpc/aws/logging/LogFactory$Level;->DEBUG:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 118
    new-instance v5, Lcom/gpc/aws/logging/LogFactory$Level;

    const-string v7, "INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/gpc/aws/logging/LogFactory$Level;->INFO:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 119
    new-instance v7, Lcom/gpc/aws/logging/LogFactory$Level;

    const-string v9, "WARN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/gpc/aws/logging/LogFactory$Level;->WARN:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 120
    new-instance v9, Lcom/gpc/aws/logging/LogFactory$Level;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/gpc/aws/logging/LogFactory$Level;->ERROR:Lcom/gpc/aws/logging/LogFactory$Level;

    .line 121
    new-instance v11, Lcom/gpc/aws/logging/LogFactory$Level;

    const v13, 0x7fffffff

    const-string v14, "OFF"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13}, Lcom/gpc/aws/logging/LogFactory$Level;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/gpc/aws/logging/LogFactory$Level;->OFF:Lcom/gpc/aws/logging/LogFactory$Level;

    const/4 v13, 0x7

    .line 113
    new-array v13, v13, [Lcom/gpc/aws/logging/LogFactory$Level;

    aput-object v0, v13, v3

    aput-object v1, v13, v4

    aput-object v2, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v15

    sput-object v13, Lcom/gpc/aws/logging/LogFactory$Level;->$VALUES:[Lcom/gpc/aws/logging/LogFactory$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/gpc/aws/logging/LogFactory$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/logging/LogFactory$Level;
    .locals 1

    .line 113
    const-class v0, Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/logging/LogFactory$Level;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/logging/LogFactory$Level;
    .locals 1

    .line 113
    sget-object v0, Lcom/gpc/aws/logging/LogFactory$Level;->$VALUES:[Lcom/gpc/aws/logging/LogFactory$Level;

    invoke-virtual {v0}, [Lcom/gpc/aws/logging/LogFactory$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/logging/LogFactory$Level;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/gpc/aws/logging/LogFactory$Level;->value:I

    return v0
.end method
