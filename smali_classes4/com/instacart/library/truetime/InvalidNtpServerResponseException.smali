.class public Lcom/instacart/library/truetime/InvalidNtpServerResponseException;
.super Ljava/io/IOException;
.source "InvalidNtpServerResponseException.java"


# instance fields
.field public final actualValue:F

.field public final expectedValue:F

.field public final property:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    const-string p1, "na"

    iput-object p1, p0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;->property:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;->expectedValue:F

    .line 18
    iput p1, p0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;->actualValue:F

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 5

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 36
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 37
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    .line 33
    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;->property:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;->actualValue:F

    .line 41
    iput p4, p0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;->expectedValue:F

    return-void
.end method
