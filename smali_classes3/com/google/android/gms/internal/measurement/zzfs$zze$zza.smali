.class public final Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
.super Lcom/google/android/gms/internal/measurement/zzju$zza;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfs$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "Lcom/google/android/gms/internal/measurement/zzfs$zze;",
        "Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzf()Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfu;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzb()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;I)V

    return-object p0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 25
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;ILcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;ILcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;J)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzg;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb()J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;J)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()J
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;)V

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzg;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzh()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzk()Z

    move-result v0

    return v0
.end method
