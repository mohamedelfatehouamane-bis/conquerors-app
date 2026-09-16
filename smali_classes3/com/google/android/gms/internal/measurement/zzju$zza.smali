.class public Lcom/google/android/gms/internal/measurement/zzju$zza;
.super Lcom/google/android/gms/internal/measurement/zzia;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzju<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzia<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzju;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzia;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju;->zzcb()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzlv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkc;
        }
    .end annotation

    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result p2

    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzlv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Lcom/google/android/gms/internal/measurement/zzjh;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzig;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzkc; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 39
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 37
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkc;->zzh()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p1

    throw p1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 35
    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zziv;",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Lcom/google/android/gms/internal/measurement/zziv;)Lcom/google/android/gms/internal/measurement/zziz;

    move-result-object p1

    .line 23
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlw;Lcom/google/android/gms/internal/measurement/zzjh;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 28
    :cond_1
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    .line 60
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    .line 61
    sget v1, Lcom/google/android/gms/internal/measurement/zzju$zzf;->zze:I

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzju;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zza;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzai()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0
.end method

.method public final i_()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Lcom/google/android/gms/internal/measurement/zzju;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzia;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzia;->zzb(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju$zza;

    return-object p1
.end method

.method public final synthetic zza([BII)Lcom/google/android/gms/internal/measurement/zzia;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkc;
        }
    .end annotation

    const/4 p2, 0x0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Lcom/google/android/gms/internal/measurement/zzjh;

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzia;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkc;
        }
    .end annotation

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzju;)Lcom/google/android/gms/internal/measurement/zzju$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    .line 11
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzju;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic zzae()Lcom/google/android/gms/internal/measurement/zzia;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zza;

    return-object v0
.end method

.method public final zzaf()Lcom/google/android/gms/internal/measurement/zzju;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzai()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->i_()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 44
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(Lcom/google/android/gms/internal/measurement/zzlh;)V

    .line 45
    throw v1
.end method

.method public zzag()Lcom/google/android/gms/internal/measurement/zzju;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzch()V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0
.end method

.method public synthetic zzah()Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzaf()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzai()Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzag()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzaj()Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0
.end method

.method protected final zzak()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    :cond_0
    return-void
.end method

.method protected zzal()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcb()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzlg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzc(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    return-object p1
.end method
