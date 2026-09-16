.class final Lcom/google/android/gms/games/internal/zzt;
.super Lcom/google/android/gms/internal/games_v2/zzab;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/internal/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzah;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzt;->zza:Lcom/google/android/gms/games/internal/zzah;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzab;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/String;I)V
    .locals 6

    .line 1
    const-string v0, "GamesGmsClientImpl"

    const-string v1, " because the games client is no longer connected"

    const-string v2, " by "

    const-string v3, "Unable to increment event "

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/games/internal/zzt;->zza:Lcom/google/android/gms/games/internal/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/games/internal/zzah;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzam;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/games/internal/zzam;->zzJ(Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    sget p2, Lcom/google/android/gms/games/internal/zzah;->zze:I

    const-string p2, "Is player signed out?"

    .line 5
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzah;->zzU(Landroid/os/RemoteException;)V

    return-void
.end method
