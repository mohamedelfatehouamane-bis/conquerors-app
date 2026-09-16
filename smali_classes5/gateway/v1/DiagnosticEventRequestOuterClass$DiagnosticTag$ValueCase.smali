.class public final enum Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;
.super Ljava/lang/Enum;
.source "DiagnosticEventRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

.field public static final enum INT_VALUE:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

.field public static final enum STRING_VALUE:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

.field public static final enum VALUE_NOT_SET:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 453
    new-instance v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    const-string v1, "STRING_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->STRING_VALUE:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    .line 454
    new-instance v1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    const/4 v4, 0x4

    const-string v5, "INT_VALUE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v4}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->INT_VALUE:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    .line 455
    new-instance v4, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    const-string v5, "VALUE_NOT_SET"

    const/4 v7, 0x2

    invoke-direct {v4, v5, v7, v2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->VALUE_NOT_SET:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    .line 452
    new-array v3, v3, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v6

    aput-object v4, v3, v7

    sput-object v3, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->$VALUES:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 458
    iput p3, p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 471
    :cond_0
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->INT_VALUE:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    return-object p0

    .line 470
    :cond_1
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->STRING_VALUE:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    return-object p0

    .line 472
    :cond_2
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->VALUE_NOT_SET:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    return-object p0
.end method

.method public static valueOf(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-static {p0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;
    .locals 1

    .line 452
    const-class v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    return-object p0
.end method

.method public static values()[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;
    .locals 1

    .line 452
    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->$VALUES:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    invoke-virtual {v0}, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 477
    iget v0, p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTag$ValueCase;->value:I

    return v0
.end method
