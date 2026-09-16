.class public Lcom/google/android/gms/measurement/internal/zzng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zziq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzng$zzb;,
        Lcom/google/android/gms/measurement/internal/zzng$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzng;


# instance fields
.field private zzaa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:J

.field private final zzac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzis;",
            ">;"
        }
    .end annotation
.end field

.field private final zzad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzax;",
            ">;"
        }
    .end annotation
.end field

.field private final zzae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzng$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaf:Lcom/google/android/gms/measurement/internal/zzkx;

.field private zzag:Ljava/lang/String;

.field private final zzah:Lcom/google/android/gms/measurement/internal/zzny;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzgy;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzge;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzan;

.field private zze:Lcom/google/android/gms/measurement/internal/zzgl;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzna;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzs;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zznt;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzkv;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzmg;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzne;

.field private zzl:Lcom/google/android/gms/measurement/internal/zzgv;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzho;

.field private zzn:Z

.field private zzo:Z

.field private zzp:J

.field private zzq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Ljava/nio/channels/FileLock;

.field private zzy:Ljava/nio/channels/FileChannel;

.field private zzz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zznq;)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzng;-><init>(Lcom/google/android/gms/measurement/internal/zznq;Lcom/google/android/gms/measurement/internal/zzho;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zznq;Lcom/google/android/gms/measurement/internal/zzho;)V
    .locals 2

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 431
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzn:Z

    .line 432
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzr:Ljava/util/Set;

    .line 433
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zznn;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    .line 434
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zznq;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 436
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzho;

    move-result-object p2

    .line 438
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    const-wide/16 v0, -0x1

    .line 439
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzab:J

    .line 441
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzne;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 442
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzk:Lcom/google/android/gms/measurement/internal/zzne;

    .line 444
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 446
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 447
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzh:Lcom/google/android/gms/measurement/internal/zznt;

    .line 449
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzge;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzge;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 451
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 452
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzc:Lcom/google/android/gms/measurement/internal/zzge;

    .line 454
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 456
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 457
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 458
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzac:Ljava/util/Map;

    .line 459
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzad:Ljava/util/Map;

    .line 460
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzae:Ljava/util/Map;

    .line 461
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zznj;-><init>(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zznq;)V

    .line 462
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaj;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfl$zza;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzj:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcz:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zza()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, v3, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 11
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    .line 12
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzir;

    if-eq v0, v3, :cond_2

    .line 13
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 14
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 15
    :cond_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 17
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 25
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 32
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;Lcom/google/android/gms/measurement/internal/zzis;Lcom/google/android/gms/measurement/internal/zzaj;)Lcom/google/android/gms/measurement/internal/zzax;
    .locals 8

    .line 215
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfl$zza;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    const/4 v3, 0x1

    .line 223
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 222
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne p1, p3, :cond_0

    .line 217
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zza()I

    move-result v2

    .line 218
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;I)V

    goto :goto_0

    .line 220
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzai;->zzj:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 221
    :goto_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzax;

    .line 223
    invoke-direct {p1, v6, v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    .line 225
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    .line 226
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    if-eq v0, v7, :cond_e

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, v7, :cond_2

    goto/16 :goto_6

    .line 230
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 231
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p2

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcz:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p2, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 234
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, p2, :cond_3

    .line 235
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 236
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p2

    .line 237
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzir;

    if-eq p2, v0, :cond_3

    .line 238
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    :goto_1
    move-object v0, p2

    goto/16 :goto_7

    .line 240
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 241
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Lcom/google/android/gms/measurement/internal/zzis$zza;

    move-result-object p2

    .line 243
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzis;->zzc()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p3

    .line 244
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 245
    :cond_5
    :goto_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    if-ne p2, v0, :cond_6

    if-eqz v3, :cond_6

    .line 246
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    move-object v0, p3

    goto/16 :goto_7

    .line 248
    :cond_6
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 249
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 250
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 252
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    goto :goto_1

    .line 253
    :cond_7
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    goto :goto_1

    .line 257
    :cond_8
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzir;

    if-eq v0, p2, :cond_a

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :cond_a
    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 259
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 260
    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Lcom/google/android/gms/measurement/internal/zzis$zza;

    move-result-object p2

    .line 261
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzis;->zze()Ljava/lang/Boolean;

    move-result-object p3

    .line 262
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    if-ne p2, v3, :cond_c

    if-eqz p3, :cond_c

    .line 263
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 264
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    goto :goto_4

    .line 265
    :cond_b
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    :goto_4
    move-object v0, p2

    .line 266
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 267
    :cond_c
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zza:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, p2, :cond_f

    .line 268
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis$zza;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 269
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    goto :goto_5

    .line 270
    :cond_d
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    .line 271
    :goto_5
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto/16 :goto_1

    .line 227
    :cond_e
    :goto_6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zza()I

    move-result v2

    .line 228
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    invoke-virtual {p4, p2, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;I)V

    .line 274
    :cond_f
    :goto_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzn(Ljava/lang/String;)Z

    move-result p2

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzh(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    .line 277
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    if-eq v0, p3, :cond_12

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_10

    goto :goto_8

    .line 282
    :cond_10
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzax;

    .line 284
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 285
    const-string v0, ""

    if-eqz p2, :cond_11

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    invoke-direct {p3, v4, v2, p4, v0}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    .line 278
    :cond_12
    :goto_8
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzax;

    .line 280
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v6, v2, p2, v1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzng;)Lcom/google/android/gms/measurement/internal/zzho;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;
    .locals 3

    if-eqz p0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznf;->zzam()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzng;
    .locals 2

    .line 323
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    if-nez v0, :cond_1

    .line 326
    const-class v0, Lcom/google/android/gms/measurement/internal/zzng;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zznq;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zznq;

    .line 331
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzng;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzng;-><init>(Lcom/google/android/gms/measurement/internal/zznq;)V

    .line 332
    sput-object v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    .line 333
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 334
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;
    .locals 8

    .line 337
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 341
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 342
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    .line 346
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 353
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzis;)Ljava/lang/String;
    .locals 3

    .line 368
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 370
    new-array p1, p1, [B

    .line 371
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznw;->zzv()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 372
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;ILjava/lang/String;)V
    .locals 4

    .line 738
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 739
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 740
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 745
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 747
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 748
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v0

    .line 749
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object p2

    .line 750
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 751
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;)V
    .locals 3

    .line 1489
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1490
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1491
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;JZ)V
    .locals 9

    if-eqz p4, :cond_0

    .line 971
    const-string v0, "_se"

    goto :goto_0

    .line 970
    :cond_0
    const-string v0, "_lte"

    :goto_0
    move-object v4, v0

    .line 973
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 974
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    .line 979
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznx;

    .line 980
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    .line 981
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 982
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, p2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 975
    :cond_2
    :goto_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznx;

    .line 976
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 978
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 983
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v0

    .line 984
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v0

    .line 985
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 986
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzn;

    .line 990
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 992
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zzn;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_3

    .line 995
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzn;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_5

    .line 997
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    if-eqz p4, :cond_4

    .line 1000
    const-string p1, "session-scoped"

    goto :goto_4

    .line 999
    :cond_4
    const-string p1, "lifetime"

    .line 1001
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    .line 1002
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    iget-object p4, v1, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 1003
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zznq;)V
    .locals 3

    .line 387
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 389
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgv;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 390
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzl:Lcom/google/android/gms/measurement/internal/zzgv;

    .line 392
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 394
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 395
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzd:Lcom/google/android/gms/measurement/internal/zzan;

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzag;)V

    .line 398
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzmg;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 400
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 401
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 403
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzs;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 405
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 406
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzg:Lcom/google/android/gms/measurement/internal/zzs;

    .line 408
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 410
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 411
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzi:Lcom/google/android/gms/measurement/internal/zzkv;

    .line 413
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzna;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzna;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 415
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznf;->zzal()V

    .line 416
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzf:Lcom/google/android/gms/measurement/internal/zzna;

    .line 418
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 419
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zze:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 420
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzs:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzt:I

    if-eq p1, v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzs:I

    .line 423
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzt:I

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 425
    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzn:Z

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    .line 2221
    const-string v0, "_sc"

    const-string v1, "_si"

    const-string v2, "_o"

    const-string v3, "_sn"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2222
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2223
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zznw;->zzg(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznw;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2225
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_1

    .line 2224
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Z)I

    move-result p1

    :goto_1
    int-to-long v3, p1

    .line 2227
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v5, p1

    .line 2229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    .line 2230
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v1, 0x28

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    .line 2231
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2232
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    .line 2235
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    .line 2236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p2

    invoke-virtual {p2, p4, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Z)I

    move-result p2

    .line 2237
    invoke-static {p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 2238
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2240
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p4

    .line 2241
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p4

    const-string v0, "Param value is too long; discarded. Name, value length"

    .line 2242
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2243
    invoke-virtual {p4, v0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2244
    const-string p4, "_err"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_3

    const-wide/16 v2, 0x4

    .line 2245
    invoke-virtual {p3, p4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2246
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    .line 2247
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    const-string p1, "_el"

    invoke-virtual {p3, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2249
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 1872
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1874
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Z)V

    .line 1875
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/Long;)V

    .line 1876
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/Long;)V

    .line 1877
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzas()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1878
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1601
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1602
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return-void

    .line 1604
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    .line 3452
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 3453
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3457
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3458
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3459
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 3460
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 3461
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 3462
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 3463
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 3464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 3467
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3454
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Z
    .locals 9

    .line 3422
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3423
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3425
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    .line 3426
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 3427
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 3429
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 3430
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    .line 3431
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3434
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3435
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3437
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3439
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3440
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    goto :goto_2

    .line 3442
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v2

    .line 3444
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3445
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_3

    .line 3446
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 3447
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3448
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .locals 43

    move-object/from16 v1, p0

    .line 2672
    const-string v2, "_ai"

    const-string v3, "items"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 2673
    :try_start_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzng$zza;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zzng$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zznp;)V

    .line 2674
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzab:J

    .line 2676
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2678
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 2680
    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 2681
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v15, ""

    if-eqz v0, :cond_3

    cmp-long v0, v7, v10

    if-eqz v0, :cond_0

    move-wide/from16 v23, v10

    .line 2684
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-wide/from16 v23, v10

    .line 2685
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    :goto_0
    if-eqz v0, :cond_1

    .line 2687
    const-string v15, "rowid <= ? and "

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "select app_id, metadata_fingerprint from raw_events where "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2688
    invoke-virtual {v14, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2689
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_2

    if-eqz v10, :cond_c

    .line 2691
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_7

    .line 2693
    :cond_2
    :try_start_5
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2694
    :try_start_6
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2695
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v5

    goto/16 :goto_6

    :cond_3
    move-wide/from16 v23, v10

    cmp-long v0, v7, v23

    if-eqz v0, :cond_4

    .line 2698
    :try_start_7
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v10
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_47

    :catch_1
    move-exception v0

    move-object v10, v5

    move-object v11, v10

    goto/16 :goto_6

    .line 2699
    :cond_4
    :try_start_8
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    if-eqz v0, :cond_5

    .line 2701
    :try_start_9
    const-string v15, " and rowid <= ?"
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " order by rowid limit 1;"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2702
    invoke-virtual {v14, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2703
    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v0, :cond_6

    if-eqz v10, :cond_c

    .line 2705
    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_7

    .line 2707
    :cond_6
    :try_start_d
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2708
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v11, v5

    .line 2709
    :goto_2
    :try_start_e
    const-string v15, "raw_events_metadata"

    const-string v16, "metadata"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "app_id = ? and metadata_fingerprint = ?"

    filled-new-array {v11, v0}, [Ljava/lang/String;

    move-result-object v18

    const-string v21, "rowid"

    const-string v22, "2"

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2710
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2711
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-nez v15, :cond_7

    .line 2712
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 2713
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v7, "Raw event metadata record is missing. appId"

    .line 2714
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v10, :cond_c

    .line 2716
    :try_start_f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_7

    .line 2718
    :cond_7
    :try_start_10
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2719
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzv()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v5

    invoke-static {v5, v15}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzlg;[B)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs$zzj;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2729
    :try_start_12
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2730
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v15

    .line 2731
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v15

    const-string v12, "Get multiple raw event metadata records, expected one. appId"

    .line 2732
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2733
    invoke-virtual {v15, v12, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2734
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2735
    invoke-interface {v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj;)V

    cmp-long v5, v7, v23

    if-eqz v5, :cond_9

    .line 2737
    const-string v5, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    .line 2738
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v11, v0, v7}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2739
    :cond_9
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    .line 2740
    filled-new-array {v11, v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object/from16 v18, v0

    move-object/from16 v17, v5

    .line 2741
    const-string v15, "raw_events"

    const-string v0, "rowid"

    const-string v5, "name"

    const-string v7, "timestamp"

    const-string v8, "data"

    filled-new-array {v0, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v16

    const-string v21, "rowid"

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2742
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2743
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2744
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 2745
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v5, "Raw event data disappeared while in transaction. appId"

    .line 2746
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2747
    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v10, :cond_c

    .line 2749
    :try_start_13
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_7

    .line 2751
    :cond_a
    :try_start_14
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v5, 0x3

    .line 2752
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2753
    :try_start_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzlg;[B)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const/4 v5, 0x1

    .line 2760
    :try_start_16
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object v5

    const/4 v9, 0x2

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2761
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-interface {v4, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzar;->zza(JLcom/google/android/gms/internal/measurement/zzfs$zze;)Z

    move-result v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-nez v0, :cond_b

    if-eqz v10, :cond_c

    .line 2763
    :try_start_17
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_7

    :catch_2
    move-exception v0

    .line 2756
    :try_start_18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 2757
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v7, "Data loss. Failed to merge raw event. appId"

    .line 2758
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2765
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-nez v0, :cond_a

    if-eqz v10, :cond_c

    .line 2767
    :try_start_19
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 2722
    :try_start_1a
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 2723
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    .line 2724
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2725
    invoke-virtual {v5, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz v10, :cond_c

    .line 2727
    :try_start_1b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_47

    :catch_7
    move-exception v0

    move-wide/from16 v23, v10

    :goto_4
    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x0

    .line 2769
    :goto_6
    :try_start_1c
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 2770
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v6, "Data loss. Error selecting raw event. appId"

    .line 2771
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v10, :cond_c

    .line 2773
    :try_start_1d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2778
    :cond_c
    :goto_7
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    if-eqz v0, :cond_79

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_46

    .line 2781
    :cond_d
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2782
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v0

    .line 2783
    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 2790
    :goto_8
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    const-string v15, "_fr"

    const-string v13, "_et"

    const-string v5, "_e"

    move-object/from16 p3, v6

    const-string v6, "_c"

    move/from16 v17, v9

    move/from16 v18, v10

    if-ge v8, v14, :cond_39

    .line 2792
    :try_start_1e
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 2793
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v14

    .line 2794
    move-object/from16 v19, v14

    check-cast v19, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2795
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2796
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v7

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzgy;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    const-string v9, "_err"

    if-eqz v7, :cond_10

    .line 2797
    :try_start_1f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 2798
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v6, "Dropping blocked raw event. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2799
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2800
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v10

    .line 2801
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2802
    invoke-virtual {v5, v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2804
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgy;->zzm(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2805
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgy;->zzo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_9

    .line 2806
    :cond_e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2807
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2808
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v28

    const-string v30, "_ev"

    .line 2809
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v29, 0xb

    move-object/from16 v27, v5

    .line 2810
    invoke-static/range {v27 .. v32}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_9
    move-object/from16 v27, v2

    move v13, v8

    move/from16 v10, v18

    move-object v8, v4

    :goto_a
    move-object/from16 v6, p3

    move/from16 v9, v17

    move-object/from16 v7, v21

    goto/16 :goto_24

    .line 2812
    :cond_10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v7

    .line 2813
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zziv;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2814
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2815
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v7

    const-string v10, "Renaming ad_impression to _ai"

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x0

    .line 2817
    :goto_b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza()I

    move-result v10

    if-ge v7, v10, :cond_12

    .line 2818
    const-string v10, "ad_platform"

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v22

    move-object/from16 v27, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2819
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "admob"

    .line 2820
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2821
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2822
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v10, "AdMob ad impression logged from app. Potentially duplicative."

    .line 2823
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v27

    goto :goto_b

    :cond_12
    move-object/from16 v27, v2

    .line 2826
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2827
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2828
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v7

    .line 2829
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2830
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    move/from16 v22, v2

    const v2, 0x17333

    if-eq v10, v2, :cond_13

    goto :goto_c

    :cond_13
    const-string v2, "_ui"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_e

    :cond_14
    :goto_c
    move/from16 v28, v8

    move/from16 v30, v11

    :cond_15
    :goto_d
    move/from16 v9, v17

    goto/16 :goto_15

    :cond_16
    move/from16 v22, v2

    :goto_e
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/16 v28, 0x0

    .line 2836
    :goto_f
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza()I

    move-result v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    move/from16 v29, v10

    const-string v10, "_r"

    if-ge v2, v7, :cond_19

    .line 2837
    :try_start_20
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2839
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v7

    .line 2840
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v7

    .line 2841
    move-object v10, v7

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move/from16 v30, v11

    const-wide/16 v10, 0x1

    .line 2842
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v7

    .line 2843
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 2845
    invoke-virtual {v14, v2, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move/from16 v10, v29

    const/16 v28, 0x1

    goto :goto_10

    :cond_17
    move/from16 v30, v11

    .line 2846
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2848
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v7

    .line 2849
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v7

    .line 2850
    move-object v10, v7

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    const-wide/16 v10, 0x1

    .line 2851
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v7

    .line 2852
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 2854
    invoke-virtual {v14, v2, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    const/4 v10, 0x1

    goto :goto_10

    :cond_18
    move/from16 v10, v29

    :goto_10
    add-int/lit8 v2, v2, 0x1

    move/from16 v11, v30

    goto :goto_f

    :cond_19
    move/from16 v30, v11

    if-nez v28, :cond_1a

    if-eqz v22, :cond_1a

    .line 2857
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2858
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v7, "Marking event as conversion"

    .line 2859
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v11

    move/from16 v28, v8

    .line 2860
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2861
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2863
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    .line 2864
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    const-wide/16 v7, 0x1

    .line 2865
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    .line 2866
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto :goto_11

    :cond_1a
    move/from16 v28, v8

    :goto_11
    if-nez v29, :cond_1b

    .line 2868
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2869
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v7, "Marking event as real-time"

    .line 2870
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v8

    .line 2871
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2872
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2874
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    .line 2875
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    const-wide/16 v7, 0x1

    .line 2876
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    .line 2877
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2880
    :cond_1b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v31

    .line 2881
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzx()J

    move-result-wide v32

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2882
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v34

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 2883
    invoke-virtual/range {v31 .. v40}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2884
    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/zzao;->zze:J

    .line 2885
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzc(Ljava/lang/String;)I

    move-result v2

    move-wide/from16 v19, v7

    int-to-long v7, v2

    cmp-long v2, v19, v7

    if-lez v2, :cond_1c

    .line 2886
    invoke-static {v14, v10}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    const/16 v17, 0x1

    .line 2888
    :goto_12
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zznw;->zzh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v22, :cond_15

    .line 2891
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v31

    .line 2892
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzx()J

    move-result-wide v32

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2893
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v34

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x0

    .line 2894
    invoke-virtual/range {v31 .. v40}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2895
    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    .line 2896
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v10

    .line 2897
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzn:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-lez v2, :cond_15

    .line 2899
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2900
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v7, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2901
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2902
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 2906
    :goto_13
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza()I

    move-result v11

    if-ge v8, v11, :cond_1f

    .line 2907
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v11

    move-object/from16 v19, v2

    .line 2908
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2910
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v2

    .line 2911
    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move v7, v8

    goto :goto_14

    .line 2913
    :cond_1d
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v2, v19

    const/4 v10, 0x1

    goto :goto_14

    :cond_1e
    move-object/from16 v2, v19

    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1f
    move-object/from16 v19, v2

    if-eqz v10, :cond_20

    if-eqz v19, :cond_20

    .line 2918
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto/16 :goto_d

    :cond_20
    if-eqz v19, :cond_21

    .line 2922
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzia;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    .line 2923
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    const-wide/16 v8, 0xa

    .line 2924
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v2

    .line 2925
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 2926
    invoke-virtual {v14, v7, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto/16 :goto_d

    .line 2928
    :cond_21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2929
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2930
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2931
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_d

    :goto_15
    if-eqz v22, :cond_29

    .line 2934
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzf()Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v10, -0x1

    .line 2937
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    move/from16 v17, v9

    const-string v9, "currency"

    move-object/from16 v22, v4

    const-string v4, "value"

    if-ge v7, v11, :cond_24

    .line 2938
    :try_start_21
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v8, v7

    goto :goto_17

    .line 2940
    :cond_22
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v10, v7

    :cond_23
    :goto_17
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v17

    move-object/from16 v4, v22

    goto :goto_16

    :cond_24
    const/4 v7, -0x1

    if-eq v8, v7, :cond_2a

    .line 2944
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzl()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzj()Z

    move-result v7

    if-nez v7, :cond_25

    .line 2945
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v7, "Value must be specified with a numeric type."

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2948
    invoke-static {v14, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 2949
    invoke-static {v14, v2, v4}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;ILjava/lang/String;)V

    goto :goto_1a

    :cond_25
    const/4 v7, -0x1

    if-ne v10, v7, :cond_26

    const/4 v10, 0x3

    goto :goto_19

    .line 2954
    :cond_26
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 2955
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x3

    if-eq v4, v10, :cond_27

    goto :goto_19

    :cond_27
    const/4 v4, 0x0

    .line 2957
    :goto_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_2b

    .line 2958
    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 2959
    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v19

    if-nez v19, :cond_28

    .line 2965
    :goto_19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2966
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v4, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 2967
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2970
    invoke-static {v14, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 2971
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;ILjava/lang/String;)V

    goto :goto_1b

    .line 2962
    :cond_28
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v4, v11

    goto :goto_18

    :cond_29
    move-object/from16 v22, v4

    move/from16 v17, v9

    :goto_1a
    const/4 v7, -0x1

    :cond_2a
    const/4 v10, 0x3

    .line 2972
    :cond_2b
    :goto_1b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_2d

    .line 2973
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v2, v15}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v2

    if-nez v2, :cond_2f

    if-eqz v21, :cond_2c

    .line 2975
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v19

    sub-long v8, v8, v19

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-gtz v2, :cond_2c

    .line 2976
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzia;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2977
    invoke-direct {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2980
    invoke-virtual {v0, v12, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move/from16 v11, v30

    :goto_1c
    const/4 v2, 0x0

    const/16 v21, 0x0

    goto :goto_1d

    :cond_2c
    move-object v2, v14

    move/from16 v11, v18

    goto :goto_1d

    .line 2986
    :cond_2d
    const-string v2, "_vs"

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2987
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v2, v13}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v2

    if-nez v2, :cond_2f

    if-eqz p3, :cond_2e

    .line 2989
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v19

    sub-long v8, v8, v19

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-gtz v2, :cond_2e

    .line 2990
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzia;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 2991
    invoke-direct {v1, v2, v14}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move/from16 v5, v30

    .line 2994
    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move v11, v5

    goto :goto_1c

    :cond_2e
    move/from16 v5, v30

    move-object/from16 v2, p3

    move v11, v5

    move-object/from16 v21, v14

    move/from16 v12, v18

    goto :goto_1d

    :cond_2f
    move/from16 v5, v30

    move-object/from16 v2, p3

    move v11, v5

    .line 3000
    :goto_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpm;->zza()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3001
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzcv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3002
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza()I

    move-result v4

    if-eqz v4, :cond_37

    .line 3004
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzf()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 3005
    :goto_1e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza()I

    move-result v6

    if-ge v5, v6, :cond_34

    .line 3006
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v6

    .line 3007
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 3008
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzi()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_32

    move-object/from16 v8, v22

    .line 3009
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3010
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v9

    .line 3012
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzi()Ljava/util/List;

    move-result-object v6

    .line 3013
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/os/Bundle;

    const/4 v15, 0x0

    .line 3014
    :goto_1f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v15, v7, :cond_31

    .line 3015
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 3016
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzi()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v10

    .line 3017
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzi()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-object/from16 p3, v2

    .line 3018
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v2

    .line 3019
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v19

    .line 3020
    move-object/from16 v20, v19

    check-cast v20, Lcom/google/android/gms/internal/measurement/zzju$zza;

    move/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    invoke-direct {v1, v2, v5, v10, v9}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object/from16 v2, p3

    move/from16 v5, v20

    goto :goto_20

    :cond_30
    move-object/from16 p3, v2

    move/from16 v20, v5

    .line 3022
    aput-object v10, v13, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move/from16 v5, v20

    const/4 v10, 0x3

    goto :goto_1f

    :cond_31
    move-object/from16 p3, v2

    move/from16 v20, v5

    .line 3024
    invoke-virtual {v4, v3, v13}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_21

    :cond_32
    move-object/from16 p3, v2

    move/from16 v20, v5

    move-object/from16 v8, v22

    .line 3026
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 3028
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v2

    .line 3029
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v5

    .line 3030
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3031
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v6

    .line 3032
    invoke-direct {v1, v2, v5, v4, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_33
    :goto_21
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v2, p3

    move-object/from16 v22, v8

    const/4 v7, -0x1

    const/4 v10, 0x3

    goto/16 :goto_1e

    :cond_34
    move-object/from16 p3, v2

    move-object/from16 v8, v22

    .line 3035
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 3036
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v2

    .line 3037
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3038
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_35
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3039
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v9

    .line 3040
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_35

    .line 3042
    invoke-virtual {v2, v9, v7}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;Ljava/lang/Object;)V

    .line 3043
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 3046
    :cond_36
    move-object v2, v5

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_38

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 3047
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto :goto_23

    :cond_37
    move-object/from16 p3, v2

    move-object/from16 v8, v22

    .line 3049
    :cond_38
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move/from16 v13, v28

    invoke-interface {v2, v13, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v18, 0x1

    .line 3051
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto/16 :goto_a

    :goto_24
    add-int/lit8 v2, v13, 0x1

    move-object v4, v8

    const/4 v13, 0x0

    move v8, v2

    move-object/from16 v2, v27

    goto/16 :goto_8

    :cond_39
    move-object v8, v4

    const-wide/16 v2, 0x0

    move-wide v11, v2

    move/from16 v10, v18

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v10, :cond_3d

    .line 3054
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-result-object v7

    .line 3055
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 3056
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v7, v15}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v9

    if-eqz v9, :cond_3a

    .line 3057
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 3062
    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v7, v13}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 3064
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzl()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_26

    :cond_3b
    const/4 v7, 0x0

    :goto_26
    if-eqz v7, :cond_3c

    .line 3065
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v9, v21, v2

    if-lez v9, :cond_3c

    .line 3066
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    add-long v11, v11, v21

    :cond_3c
    :goto_27
    const/16 v25, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_3d
    const/4 v4, 0x0

    .line 3068
    invoke-direct {v1, v0, v11, v12, v4}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;JZ)V

    .line 3070
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    const-string v7, "_se"

    if-eqz v5, :cond_3f

    :try_start_22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 3071
    const-string v9, "_s"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 3076
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 3077
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 3078
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    :cond_3f
    const-string v4, "_sid"

    .line 3080
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_40

    const/4 v5, 0x1

    .line 3082
    invoke-direct {v1, v0, v11, v12, v5}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;JZ)V

    goto :goto_28

    .line 3084
    :cond_40
    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_41

    .line 3086
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3087
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 3088
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v5, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v7, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3089
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 3090
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3091
    :cond_41
    :goto_28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V

    .line 3092
    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    .line 3094
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 3095
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 3096
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v5

    if-nez v5, :cond_42

    .line 3098
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 3099
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v7, "Cannot fix consent fields without appInfo. appId"

    .line 3100
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29

    .line 3102
    :cond_42
    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzf;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V

    :goto_29
    const-wide v4, 0x7fffffffffffffffL

    .line 3104
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v4

    const-wide/high16 v9, -0x8000000000000000L

    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    const/4 v4, 0x0

    .line 3105
    :goto_2a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 3106
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-result-object v5

    .line 3107
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzd()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-gez v7, :cond_43

    .line 3108
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzd()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3109
    :cond_43
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzd()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_44

    .line 3110
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzd()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 3112
    :cond_45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzs()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3113
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zza()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3114
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzdg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v4

    if-nez v4, :cond_46

    .line 3117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3118
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3119
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3120
    :cond_46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v4

    if-nez v4, :cond_47

    .line 3121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3123
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3125
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zznw;->zzd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3126
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3127
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzas()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcm:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3130
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v5

    goto :goto_2b

    :cond_48
    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_2b
    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v5, :cond_4f

    if-eqz v4, :cond_49

    .line 3133
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-result-object v9

    .line 3134
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v9

    .line 3135
    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto :goto_2d

    .line 3136
    :cond_49
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzc:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 3137
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v9

    .line 3138
    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 3140
    :goto_2d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzf()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 3141
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 3146
    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zza()I

    move-result v10

    .line 3147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3148
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzav:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v11

    if-lt v10, v11, :cond_4d

    .line 3150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzci:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 3151
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zznw;->zzp()Ljava/lang/String;

    move-result-object v10

    .line 3152
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v11

    const-string v12, "_tu"

    .line 3153
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v11

    .line 3154
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v11

    .line 3155
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 3156
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto :goto_2e

    :cond_4b
    const/4 v10, 0x0

    .line 3157
    :goto_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v11

    const-string v12, "_tr"

    .line 3158
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v11

    const-wide/16 v12, 0x1

    .line 3159
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v11

    .line 3160
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 3161
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 3162
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzck:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 3164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3165
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzmy;

    move-result-object v10

    goto :goto_2f

    .line 3167
    :cond_4c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3168
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3169
    invoke-virtual {v11, v12, v13, v9, v10}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzj;Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzmy;

    move-result-object v10

    :goto_2f
    if-eqz v10, :cond_4d

    .line 3171
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v11

    .line 3172
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v11

    const-string v12, "Generated trigger URI. appId, uri"

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3173
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzmy;->zza:Ljava/lang/String;

    .line 3174
    invoke-virtual {v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3175
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzmy;)Z

    .line 3176
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzr:Ljava/util/Set;

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3177
    :cond_4d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0, v7, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2c

    .line 3180
    :cond_4f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v4

    .line 3181
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzc()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v9

    .line 3182
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v10

    .line 3183
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v11

    .line 3184
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzab()Ljava/util/List;

    move-result-object v12

    .line 3185
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 3186
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 3187
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzs;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 3188
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3189
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3191
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3192
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3193
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zznw;->zzv()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 3194
    :goto_30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v9

    if-ge v7, v9, :cond_67

    .line 3195
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-result-object v9

    .line 3196
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v9

    .line 3197
    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 3198
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_ep"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    const-string v11, "_sr"

    if-eqz v10, :cond_54

    .line 3200
    :try_start_23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    const-string v12, "_en"

    invoke-static {v10, v12}, Lcom/google/android/gms/measurement/internal/zznt;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3201
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzbb;

    if-nez v12, :cond_50

    .line 3204
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v12

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3205
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3206
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v12

    if-eqz v12, :cond_50

    .line 3208
    invoke-interface {v4, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    if-eqz v12, :cond_53

    .line 3210
    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzi:Ljava/lang/Long;

    if-nez v10, :cond_53

    .line 3211
    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    if-eqz v10, :cond_51

    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v19, 0x1

    cmp-long v10, v13, v19

    if-lez v10, :cond_51

    .line 3212
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    .line 3213
    invoke-static {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3214
    :cond_51
    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    if-eqz v10, :cond_52

    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    .line 3215
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_52

    .line 3216
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    const-string v10, "_efs"

    const-wide/16 v19, 0x1

    .line 3217
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3218
    :cond_52
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3219
    :cond_53
    invoke-virtual {v0, v7, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-wide/from16 p2, v2

    :goto_31
    move-object/from16 v26, v6

    move v1, v7

    const-wide/16 v19, 0x1

    goto/16 :goto_3a

    .line 3222
    :cond_54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v10

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3223
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;)J

    move-result-wide v12

    .line 3224
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v14

    invoke-static {v14, v15, v12, v13}, Lcom/google/android/gms/measurement/internal/zznw;->zza(JJ)J

    move-result-wide v14

    .line 3226
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-wide/from16 p2, v2

    const-string v2, "_dbg"

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5a

    if-nez v3, :cond_55

    goto :goto_33

    .line 3229
    :cond_55
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzh()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 3230
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 3231
    instance-of v1, v3, Ljava/lang/Long;

    if-eqz v1, :cond_56

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    :cond_56
    instance-of v1, v3, Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 3232
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    :cond_57
    instance-of v1, v3, Ljava/lang/Double;

    if-eqz v1, :cond_5a

    .line 3233
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    :cond_58
    const/4 v1, 0x1

    goto :goto_34

    :cond_59
    move-object/from16 v1, p0

    goto :goto_32

    .line 3239
    :cond_5a
    :goto_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3240
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_34
    if-gtz v1, :cond_5b

    .line 3242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 3243
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    .line 3244
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v10, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3245
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    invoke-virtual {v0, v7, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto/16 :goto_31

    .line 3248
    :cond_5b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzbb;

    if-nez v2, :cond_5c

    .line 3251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    if-nez v2, :cond_5c

    .line 3253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 3254
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3255
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v21, v12

    .line 3256
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v12

    .line 3257
    invoke-virtual {v2, v3, v10, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3258
    new-instance v26, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3259
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v27

    .line 3260
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v28

    .line 3261
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v35

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v26 .. v42}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object/from16 v2, v26

    goto :goto_35

    :cond_5c
    move-wide/from16 v21, v12

    .line 3263
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    const-string v10, "_eid"

    invoke-static {v3, v10}, Lcom/google/android/gms/measurement/internal/zznt;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_5d

    const/4 v10, 0x1

    goto :goto_36

    :cond_5d
    const/4 v10, 0x0

    .line 3264
    :goto_36
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x1

    if-ne v1, v13, :cond_60

    .line 3266
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3267
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_5f

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzi:Ljava/lang/Long;

    if-nez v1, :cond_5e

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    if-nez v1, :cond_5e

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    if-eqz v1, :cond_5f

    :cond_5e
    const/4 v1, 0x0

    .line 3268
    invoke-virtual {v2, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3269
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3270
    :cond_5f
    invoke-virtual {v0, v7, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto/16 :goto_31

    .line 3272
    :cond_60
    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v13

    if-nez v13, :cond_62

    .line 3273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-object/from16 v18, v12

    int-to-long v12, v1

    .line 3274
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v11, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3275
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3276
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_61

    .line 3278
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3280
    :cond_61
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3281
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11, v14, v15}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3282
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v26, v6

    move v1, v7

    const-wide/16 v19, 0x1

    goto/16 :goto_39

    :cond_62
    move-object/from16 v18, v12

    .line 3283
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzh:Ljava/lang/Long;

    if-eqz v12, :cond_63

    .line 3284
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzh:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v26, v6

    move/from16 v27, v7

    goto :goto_37

    .line 3286
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb()J

    move-result-wide v12

    move-object/from16 v26, v6

    move/from16 v27, v7

    move-wide/from16 v6, v21

    invoke-static {v12, v13, v6, v7}, Lcom/google/android/gms/measurement/internal/zznw;->zza(JJ)J

    move-result-wide v12

    :goto_37
    cmp-long v6, v12, v14

    if-eqz v6, :cond_65

    .line 3288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    const-string v3, "_efs"

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v3, v6}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3289
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    int-to-long v6, v1

    .line 3290
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v11, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3291
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3292
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_64

    .line 3294
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3296
    :cond_64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3297
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v14, v15}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3298
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_65
    const-wide/16 v19, 0x1

    .line 3299
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v10, :cond_66

    .line 3301
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zze()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v6}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3302
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    :goto_38
    move/from16 v1, v27

    .line 3303
    :goto_39
    invoke-virtual {v0, v1, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :goto_3a
    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v6, v26

    goto/16 :goto_30

    :cond_67
    move-wide/from16 p2, v2

    .line 3305
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 3306
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3307
    :cond_68
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    goto :goto_3b

    :cond_69
    move-wide/from16 p2, v2

    .line 3310
    :cond_6a
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v1

    .line 3311
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    if-nez v2, :cond_6b

    .line 3313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 3314
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Bundling raw events w/o app info. appId"

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3315
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3316
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_41

    .line 3317
    :cond_6b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v3

    if-lez v3, :cond_71

    .line 3318
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-eqz v5, :cond_6c

    .line 3320
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_3c

    .line 3321
    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzo()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3322
    :goto_3c
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzu()J

    move-result-wide v5

    cmp-long v7, v5, p2

    if-nez v7, :cond_6d

    goto :goto_3d

    :cond_6d
    move-wide v3, v5

    :goto_3d
    cmp-long v5, v3, p2

    if-eqz v5, :cond_6e

    .line 3326
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_3e

    .line 3327
    :cond_6e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3328
    :goto_3e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqw;->zza()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 3329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbt:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 3330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zznw;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 3331
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zza(J)V

    .line 3332
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzr()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_3f

    .line 3333
    :cond_6f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzap()V

    .line 3334
    :goto_3f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzt()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3335
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzr(J)V

    .line 3336
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    .line 3337
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzab()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 3339
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_40

    .line 3340
    :cond_70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 3341
    :goto_40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 3342
    :cond_71
    :goto_41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v2

    if-lez v2, :cond_75

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 3345
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzs()Z

    move-result v3

    if-nez v3, :cond_72

    goto :goto_42

    .line 3352
    :cond_72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_43

    .line 3346
    :cond_73
    :goto_42
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    move-wide/from16 v2, v23

    .line 3347
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_43

    .line 3348
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 3349
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Did not find measurement config or missing version info. appId"

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 3350
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 3351
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3353
    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    move/from16 v13, v17

    invoke-virtual {v2, v0, v13}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj;Z)Z

    .line 3354
    :cond_75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzng$zza;->zzb:Ljava/util/List;

    .line 3355
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 3357
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 3358
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rowid in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 3359
    :goto_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_77

    if-eqz v13, :cond_76

    .line 3361
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    :cond_76
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_44

    .line 3364
    :cond_77
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3365
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3366
    const-string v5, "raw_events"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3367
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_78

    .line 3368
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 3369
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v4, "Deleted fewer rows from raw events table than expected"

    .line 3370
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3371
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3372
    invoke-virtual {v0, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3373
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    .line 3374
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 3375
    :try_start_24
    const-string v3, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_24} :catch_8
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto :goto_45

    :catch_8
    move-exception v0

    .line 3378
    :try_start_25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 3379
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Failed to remove unused event metadata. appId"

    .line 3380
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3381
    :goto_45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 3382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    const/16 v25, 0x1

    return v25

    .line 3384
    :cond_79
    :goto_46
    :try_start_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 3385
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    const/16 v16, 0x0

    return v16

    :catchall_2
    move-exception v0

    move-object v5, v10

    :goto_47
    if-eqz v5, :cond_7a

    .line 2775
    :try_start_27
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2776
    :cond_7a
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    :catchall_3
    move-exception v0

    .line 3387
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 3388
    throw v0
.end method

.method private final zzaa()V
    .locals 5

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 511
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzv:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzq:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 522
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 523
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzq:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 512
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    .line 514
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzv:Z

    .line 515
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 516
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 517
    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzab()V
    .locals 21

    move-object/from16 v0, p0

    .line 1751
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1752
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1753
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 1754
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 1755
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    sub-long/2addr v1, v5

    .line 1756
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 1758
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1759
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1760
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1761
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1762
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzy()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzb()V

    .line 1763
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzz()Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzna;->zzu()V

    return-void

    .line 1765
    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    .line 1766
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzac()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_7

    .line 1772
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 1773
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1774
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzaa:Lcom/google/android/gms/measurement/internal/zzfo;

    const/4 v6, 0x0

    .line 1775
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1776
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1779
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzz()Z

    move-result v5

    const/4 v9, 0x0

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzan;->zzy()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 1781
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzn()Ljava/lang/String;

    move-result-object v10

    .line 1782
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1783
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1784
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 1785
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1786
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 1788
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1789
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzu:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 1790
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1791
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 1794
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1795
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzt:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 1796
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1797
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1800
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1801
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzmg;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v12

    .line 1803
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1804
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzmg;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v14

    .line 1805
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v16

    move-wide/from16 v17, v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;->c_()J

    move-result-wide v3

    .line 1806
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v16

    move-wide/from16 v19, v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzan;->d_()J

    move-result-wide v6

    .line 1807
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v6, v3, v17

    if-nez v6, :cond_7

    move-wide/from16 v6, v17

    goto/16 :goto_6

    :cond_7
    sub-long/2addr v3, v1

    .line 1810
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v3, v1, v3

    sub-long/2addr v12, v1

    .line 1811
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v14, v1

    .line 1812
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v1, v12

    .line 1813
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long v12, v3, v19

    if-eqz v5, :cond_8

    cmp-long v5, v6, v17

    if-lez v5, :cond_8

    .line 1816
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    add-long/2addr v12, v10

    .line 1817
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zznt;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_9

    add-long/2addr v6, v10

    goto :goto_3

    :cond_9
    move-wide v6, v12

    :goto_3
    cmp-long v5, v1, v17

    if-eqz v5, :cond_c

    cmp-long v5, v1, v3

    if-ltz v5, :cond_c

    const/4 v3, 0x0

    .line 1821
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1822
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzac:Lcom/google/android/gms/measurement/internal/zzfo;

    const/4 v5, 0x0

    .line 1823
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1824
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v8, 0x14

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_b

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v3

    .line 1827
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1828
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzab:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 1829
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1830
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v12, v17

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    mul-long v4, v4, v10

    add-long/2addr v6, v4

    cmp-long v4, v6, v1

    if-lez v4, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v17, 0x0

    goto :goto_4

    :cond_b
    const-wide/16 v6, 0x0

    :cond_c
    :goto_5
    const-wide/16 v17, 0x0

    :goto_6
    cmp-long v1, v6, v17

    if-nez v1, :cond_d

    .line 1839
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 1840
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzy()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzb()V

    .line 1841
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzz()Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzna;->zzu()V

    return-void

    .line 1843
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzh()Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzge;->zzu()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1844
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 1845
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzy()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zza()V

    .line 1846
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzz()Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzna;->zzu()V

    return-void

    .line 1849
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1850
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmg;->zzb:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v1

    .line 1851
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1852
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzr:Lcom/google/android/gms/measurement/internal/zzfo;

    const/4 v5, 0x0

    .line 1853
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1854
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1856
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zznt;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_f

    add-long/2addr v1, v3

    .line 1857
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1858
    :cond_f
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzy()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzb()V

    .line 1859
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v6, v1

    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-gtz v1, :cond_10

    .line 1861
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1862
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzw:Lcom/google/android/gms/measurement/internal/zzfo;

    const/4 v5, 0x0

    .line 1863
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1864
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1867
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1868
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmg;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 1869
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1870
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzz()Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzna;->zza(J)V

    return-void

    .line 1767
    :cond_11
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 1768
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzy()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzb()V

    .line 1769
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzz()Lcom/google/android/gms/measurement/internal/zzna;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzna;->zzu()V

    return-void
.end method

.method private final zzac()Z
    .locals 1

    .line 3390
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 3391
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 3392
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3393
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->f_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzad()Z
    .locals 6

    .line 3395
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 3396
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzx:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3397
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return v1

    .line 3402
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    .line 3403
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3404
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzci;->zza()Lcom/google/android/gms/internal/measurement/zzch;

    move-result-object v4

    const-string v5, "google_app_measurement.db"

    invoke-interface {v4, v0, v5}, Lcom/google/android/gms/internal/measurement/zzch;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3405
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzy:Ljava/nio/channels/FileChannel;

    .line 3406
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzx:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3408
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    return v1

    .line 3410
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 3413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 11

    .line 939
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 940
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object p1

    .line 941
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Landroid/os/Bundle;

    .line 942
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 943
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 944
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    .line 945
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;)I

    move-result v1

    .line 946
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzgf;I)V

    .line 947
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object p1

    .line 949
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "_cis"

    const-string v3, "referrer API v2"

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    .line 951
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzba;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    const-string v4, "gclid"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzba;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 954
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    new-instance v5, Lcom/google/android/gms/measurement/internal/zznv;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const-string v10, "auto"

    const-string v6, "_lgclid"

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0, v5, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 957
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    .line 961
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzba;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    const-string v1, "gbraid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 964
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    new-instance v2, Lcom/google/android/gms/measurement/internal/zznv;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const-string v7, "auto"

    const-string v3, "_gbraid"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 967
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzf;)V
    .locals 12

    .line 565
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 566
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzaa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0xcc

    const/4 v3, 0x0

    move-object v0, p0

    .line 569
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    move-object v0, p0

    .line 572
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 573
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzaa()Ljava/lang/String;

    move-result-object v2

    .line 576
    :cond_1
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zze:Lcom/google/android/gms/measurement/internal/zzfo;

    const/4 v4, 0x0

    .line 577
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 578
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzf:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 579
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 580
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "config/app/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 582
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gmp_version"

    .line 583
    const-string v5, "88000"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "runtime_version"

    const-string v5, "0"

    .line 584
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 585
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 588
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Fetching remote configuration"

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    move-result-object v2

    .line 592
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzgy;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 594
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 595
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 596
    const-string v2, "If-Modified-Since"

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgy;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v4, :cond_3

    .line 600
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v4, v3

    .line 601
    :cond_3
    const-string v3, "If-None-Match"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v10, v4

    const/4 v2, 0x1

    .line 602
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    .line 603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzh()Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/measurement/internal/zznl;

    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    .line 605
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 606
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 607
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgi;

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgh;)V

    .line 610
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 613
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    .line 615
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 616
    const-string v3, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 41

    move-object/from16 v1, p1

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v3, p0

    .line 180
    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v4, "App version does not match; dropping. appId"

    .line 184
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    move-object v2, v0

    .line 186
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzn;

    move-object v4, v2

    .line 187
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v3

    move-object v6, v4

    .line 189
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v4

    move-object v7, v6

    .line 190
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()Ljava/lang/String;

    move-result-object v6

    move-object v9, v7

    .line 191
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v7

    move-object v11, v9

    .line 192
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()J

    move-result-wide v9

    .line 193
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzar()Z

    move-result v12

    .line 194
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Ljava/lang/String;

    move-result-object v14

    .line 195
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()J

    move-result-wide v15

    .line 196
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzaq()Z

    move-result v20

    .line 197
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzaa()Ljava/lang/String;

    move-result-object v22

    .line 198
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzx()Ljava/lang/Boolean;

    move-result-object v23

    .line 199
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v24

    .line 200
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzan()Ljava/util/List;

    move-result-object v26

    .line 201
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzis;->zzh()Ljava/lang/String;

    move-result-object v28

    .line 202
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzat()Z

    move-result v31

    .line 203
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzw()J

    move-result-wide v32

    .line 204
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzis;->zza()I

    move-result v34

    .line 205
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzax;->zzf()Ljava/lang/String;

    move-result-object v35

    .line 206
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zza()I

    move-result v36

    .line 207
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()J

    move-result-wide v37

    .line 208
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzam()Ljava/lang/String;

    move-result-object v39

    .line 209
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzak()Ljava/lang/String;

    move-result-object v40

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const-string v29, ""

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v40}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 178
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 2251
    const-string v3, "_fx"

    const-string v4, "_sno"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2253
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 2255
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2256
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 2257
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2258
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 2260
    :cond_0
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v7, :cond_1

    .line 2261
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 2263
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzgy;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v7, :cond_6

    .line 2264
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2265
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    .line 2266
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2267
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v4

    .line 2268
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2269
    const-string v5, "Dropping blocked event. appId"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2271
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgy;->zzm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2272
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgy;->zzo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 2273
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2274
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v10, 0xb

    .line 2275
    const-string v11, "_ev"

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v2, :cond_5

    .line 2277
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2280
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2281
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 2282
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 2283
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 2284
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzz:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 2285
    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2286
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 2288
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Fetching config for blocked app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 2289
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_5
    :goto_2
    return-void

    .line 2291
    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    .line 2292
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v7

    .line 2293
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;)I

    move-result v11

    .line 2294
    invoke-virtual {v7, v0, v11}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzgf;I)V

    .line 2295
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2296
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzce:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2297
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    .line 2298
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzaq:Lcom/google/android/gms/measurement/internal/zzfo;

    const/16 v12, 0xa

    const/16 v13, 0x23

    invoke-virtual {v7, v9, v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;II)I

    move-result v7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 2301
    :goto_3
    new-instance v11, Ljava/util/TreeSet;

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2302
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2303
    const-string v13, "items"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2304
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v13

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Landroid/os/Bundle;

    .line 2305
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 2306
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2307
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzce:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    .line 2308
    :goto_5
    invoke-virtual {v13, v8, v7, v10}, Lcom/google/android/gms/measurement/internal/zznw;->zza([Landroid/os/Parcelable;IZ)V

    goto :goto_4

    .line 2310
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v7

    .line 2311
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2312
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 2313
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    .line 2314
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v8

    .line 2315
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Logging event"

    invoke-virtual {v0, v10, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2316
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzph;->zza()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    .line 2317
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 2318
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 2319
    const-string v0, "ecommerce_purchase"

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2320
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "refund"

    if-nez v0, :cond_e

    :try_start_1
    const-string v0, "purchase"

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2321
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2322
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v0, 0x1

    .line 2323
    :goto_7
    const-string v10, "_iap"

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2324
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    move-wide/from16 v23, v5

    move-object v5, v14

    const/16 p1, 0x1

    const/4 v6, 0x0

    goto/16 :goto_d

    .line 2327
    :cond_10
    :goto_8
    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    const-string v11, "currency"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzba;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2328
    const-string v11, "value"

    if-eqz v0, :cond_13

    .line 2329
    :try_start_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v12, v12, v18

    const-wide/16 v20, 0x0

    cmpl-double v0, v12, v20

    if-nez v0, :cond_11

    .line 2331
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzba;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double v12, v11, v18

    :cond_11
    const-wide/high16 v18, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v0, v12, v18

    if-gtz v0, :cond_12

    const-wide/high16 v18, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v0, v12, v18

    if-ltz v0, :cond_12

    .line 2333
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    .line 2334
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    neg-long v11, v11

    goto :goto_9

    .line 2336
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 2337
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Data lost. Currency value is too big. appId"

    .line 2338
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2339
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 2340
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2381
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2382
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    .line 2343
    :cond_13
    :try_start_3
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzba;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2344
    :cond_14
    :goto_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2345
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2346
    const-string v8, "[A-Z]{3}"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2347
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "_ltv_"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2348
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2349
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    instance-of v10, v10, Ljava/lang/Long;

    if-nez v10, :cond_15

    goto :goto_a

    .line 2366
    :cond_15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide v12, v11

    move-object v11, v8

    .line 2367
    new-instance v8, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    .line 2368
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v20

    add-long v18, v18, v12

    .line 2369
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-wide/from16 v23, v5

    move-object v5, v14

    move-wide/from16 v12, v20

    const/16 p1, 0x1

    const/4 v6, 0x0

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_c

    :cond_16
    :goto_a
    move-wide/from16 v23, v5

    move-wide v12, v11

    move-object v5, v14

    const/16 p1, 0x1

    const/4 v6, 0x0

    move-object v11, v8

    .line 2350
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    .line 2351
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 2352
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzae:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2354
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2355
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2356
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2357
    :try_start_4
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 2358
    const-string v14, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 2359
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9, v9, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2360
    invoke-virtual {v10, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 2363
    :try_start_5
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v8

    const-string v10, "Error pruning currencies. appId"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v10, v14, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2364
    :goto_b
    new-instance v8, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    .line 2365
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-wide/from16 v12, v16

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2370
    :goto_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2371
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 2372
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v10, "Too many unique user properties are set. Ignoring user property. appId"

    .line 2373
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2374
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v12

    .line 2375
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 2376
    invoke-virtual {v0, v10, v11, v12, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2377
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x0

    .line 2378
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2384
    :cond_17
    :goto_d
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznw;->zzh(Ljava/lang/String;)Z

    move-result v0

    .line 2385
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 2386
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzba;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 2388
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    move-wide v14, v12

    move-wide v12, v10

    move-object v11, v9

    .line 2389
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzx()J

    move-result-wide v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide v15, v14

    const/4 v14, 0x1

    move-wide/from16 v20, v15

    const/16 v16, 0x0

    move v15, v0

    move-object/from16 v22, v7

    move-wide/from16 v6, v20

    .line 2390
    invoke-virtual/range {v8 .. v19}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;JZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    move-object v9, v11

    move/from16 v18, v15

    .line 2391
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 2392
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzk:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 2393
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2394
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    const-wide/16 v14, 0x0

    cmp-long v8, v10, v14

    if-lez v8, :cond_19

    .line 2397
    rem-long/2addr v10, v12

    cmp-long v2, v10, v6

    if-nez v2, :cond_18

    .line 2398
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2399
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 2400
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzb:J

    .line 2401
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2402
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2403
    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2404
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :cond_19
    if-eqz v18, :cond_1b

    .line 2407
    :try_start_6
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 2408
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzm:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 2409
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2410
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-wide/from16 v19, v12

    int-to-long v12, v8

    sub-long/2addr v10, v12

    cmp-long v8, v10, v14

    if-lez v8, :cond_1b

    .line 2413
    rem-long v10, v10, v19

    cmp-long v2, v10, v6

    if-nez v2, :cond_1a

    .line 2414
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2415
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Data loss. Too many public events logged. appId, count"

    .line 2416
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzao;->zza:J

    .line 2417
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2418
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2419
    :cond_1a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    const-string v11, "_ev"

    move-object/from16 v10, v22

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v10, 0x10

    .line 2420
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2421
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2422
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :cond_1b
    move-object/from16 v10, v22

    if-eqz v17, :cond_1d

    .line 2425
    :try_start_7
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 2426
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    move-wide/from16 v16, v14

    .line 2427
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbh;->zzl:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v8

    const v13, 0xf4240

    .line 2428
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v13, 0x0

    .line 2429
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v13, v8

    sub-long/2addr v11, v13

    cmp-long v8, v11, v16

    if-lez v8, :cond_1e

    cmp-long v2, v11, v6

    if-nez v2, :cond_1c

    .line 2433
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2434
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 2435
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzao;->zzd:J

    .line 2436
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2437
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2438
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2439
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :cond_1d
    move-wide/from16 v16, v14

    .line 2441
    :cond_1e
    :try_start_8
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()Landroid/os/Bundle;

    move-result-object v0

    .line 2442
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v8

    const-string v11, "_o"

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v0, v11, v12}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2443
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v8

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzac:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zznw;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v11, "_r"

    if-eqz v8, :cond_1f

    .line 2444
    :try_start_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v8

    const-string v12, "_dbg"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v0, v12, v13}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2445
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v0, v11, v12}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2446
    :cond_1f
    const-string v8, "_s"

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 2448
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2449
    invoke-virtual {v8, v12, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 2450
    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_20

    .line 2451
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v12

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    invoke-virtual {v12, v0, v4, v8}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2452
    :cond_20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v4, v12, v16

    if-lez v4, :cond_21

    .line 2454
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 2455
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v8, "Data lost. Too many events stored on disk, deleted. appId"

    .line 2456
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 2457
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2458
    invoke-virtual {v4, v8, v14, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2459
    :cond_21
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzay;

    move-object v4, v11

    move-object v11, v9

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-wide v14, v10, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    move-object v10, v13

    move-wide v13, v14

    move-wide/from16 v19, v16

    const-wide/16 v15, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v26, v6

    move-wide/from16 v6, v19

    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzho;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object v0, v8

    move-object v9, v11

    .line 2460
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v8

    if-nez v8, :cond_23

    .line 2462
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Ljava/lang/String;)J

    move-result-wide v10

    .line 2463
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Ljava/lang/String;)I

    move-result v8

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-ltz v8, :cond_22

    if-eqz v18, :cond_22

    .line 2464
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2465
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    .line 2466
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2467
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v5

    .line 2468
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2469
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2470
    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2471
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 2472
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2473
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    .line 2475
    :cond_22
    :try_start_a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:J

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide v15, v11

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_e

    .line 2477
    :cond_23
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    iget-wide v10, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:J

    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Lcom/google/android/gms/measurement/internal/zzho;J)Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v0

    .line 2478
    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzc:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(J)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v8

    .line 2479
    :goto_e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 2482
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2483
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 2484
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2486
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2487
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2488
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzv()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    const-string v10, "android"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    .line 2489
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_24

    .line 2490
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2491
    :cond_24
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_25

    .line 2492
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2493
    :cond_25
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_26

    .line 2494
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2495
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v10

    if-eqz v10, :cond_28

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_28

    .line 2496
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzbq:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 2497
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzbs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 2498
    :cond_27
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2499
    :cond_28
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    const-wide/32 v12, -0x80000000

    cmp-long v14, v10, v12

    if-eqz v14, :cond_29

    .line 2500
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    long-to-int v11, v10

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2501
    :cond_29
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2502
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 2503
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2504
    :cond_2a
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2505
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzt:Ljava/lang/String;

    .line 2506
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzis;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v10

    .line 2507
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzis;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2508
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2b

    .line 2509
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2510
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v11

    if-eqz v11, :cond_35

    .line 2511
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzcg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 2512
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zznw;->zzd(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 2513
    iget v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzaa:I

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2514
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzab:J

    .line 2515
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v10

    const-wide/16 v13, 0x20

    if-nez v10, :cond_2c

    cmp-long v10, v11, v6

    if-eqz v10, :cond_2c

    const-wide/16 v15, -0x2

    and-long/2addr v11, v15

    or-long/2addr v11, v13

    :cond_2c
    cmp-long v10, v11, v26

    if-nez v10, :cond_2d

    const/4 v10, 0x1

    goto :goto_f

    :cond_2d
    const/4 v10, 0x0

    .line 2518
    :goto_f
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    cmp-long v10, v11, v6

    if-eqz v10, :cond_35

    .line 2522
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzb;->zza()Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    move-result-object v10

    and-long v15, v11, v26

    cmp-long v17, v15, v6

    if-eqz v17, :cond_2e

    const/4 v15, 0x1

    goto :goto_10

    :cond_2e
    const/4 v15, 0x0

    .line 2523
    :goto_10
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    const-wide/16 v15, 0x2

    and-long/2addr v15, v11

    cmp-long v17, v15, v6

    if-eqz v17, :cond_2f

    const/4 v15, 0x1

    goto :goto_11

    :cond_2f
    const/4 v15, 0x0

    .line 2524
    :goto_11
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zze(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    const-wide/16 v15, 0x4

    and-long/2addr v15, v11

    cmp-long v17, v15, v6

    if-eqz v17, :cond_30

    const/4 v15, 0x1

    goto :goto_12

    :cond_30
    const/4 v15, 0x0

    .line 2525
    :goto_12
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    const-wide/16 v15, 0x8

    and-long/2addr v15, v11

    cmp-long v17, v15, v6

    if-eqz v17, :cond_31

    const/4 v15, 0x1

    goto :goto_13

    :cond_31
    const/4 v15, 0x0

    .line 2526
    :goto_13
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zzg(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    const-wide/16 v15, 0x10

    and-long/2addr v15, v11

    cmp-long v17, v15, v6

    if-eqz v17, :cond_32

    const/4 v15, 0x1

    goto :goto_14

    :cond_32
    const/4 v15, 0x0

    .line 2527
    :goto_14
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    and-long/2addr v13, v11

    cmp-long v15, v13, v6

    if-eqz v15, :cond_33

    const/4 v13, 0x1

    goto :goto_15

    :cond_33
    const/4 v13, 0x0

    .line 2528
    :goto_15
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    const-wide/16 v13, 0x40

    and-long/2addr v11, v13

    cmp-long v13, v11, v6

    if-eqz v13, :cond_34

    const/4 v11, 0x1

    goto :goto_16

    :cond_34
    const/4 v11, 0x0

    .line 2529
    :goto_16
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzb$zza;

    .line 2530
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs$zzb;

    .line 2531
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzb;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2532
    :cond_35
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_36

    .line 2533
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2534
    :cond_36
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzr:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2535
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zznt;->zzu()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_37

    .line 2537
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2538
    :cond_37
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2539
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzt:Ljava/lang/String;

    .line 2540
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzis;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v10

    .line 2541
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v11

    if-eqz v11, :cond_3c

    iget-boolean v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzn:Z

    if-eqz v11, :cond_3c

    .line 2543
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 2544
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 2545
    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/zzmg;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_3c

    .line 2546
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3c

    .line 2547
    iget-boolean v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzn:Z

    if-eqz v12, :cond_3c

    .line 2548
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2549
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v12, :cond_38

    .line 2550
    iget-object v12, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2551
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 2552
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v12

    if-eqz v12, :cond_3c

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Ljava/lang/String;

    .line 2553
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const-string v12, "00000000-0000-0000-0000-000000000000"

    .line 2554
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3c

    .line 2555
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v11

    if-eqz v11, :cond_3c

    .line 2556
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzau()Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 2557
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v1, v12, v13, v5, v5}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2558
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2559
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbh;->zzdd:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v15, "_pfo"

    if-eqz v14, :cond_3a

    .line 2560
    :try_start_b
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzy()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_39

    .line 2563
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2564
    invoke-virtual {v12, v15, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2565
    :cond_39
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzz()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_3b

    .line 2567
    const-string v13, "_uwa"

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_17

    .line 2568
    :cond_3a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzdc:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 2570
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v11

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v13, v26

    .line 2572
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2573
    invoke-virtual {v12, v15, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3b
    :goto_17
    move-wide/from16 v14, v26

    .line 2574
    invoke-virtual {v12, v4, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2575
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-interface {v11, v13, v3, v12}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2577
    :cond_3c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v3

    .line 2578
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzin;->zzac()V

    .line 2579
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2580
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v3

    .line 2581
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzho;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v11

    .line 2582
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzin;->zzac()V

    .line 2583
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2584
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v3

    .line 2585
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzho;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v11

    .line 2586
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaz;->zzg()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v3

    .line 2587
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzho;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v11

    .line 2588
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaz;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2589
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzx:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2590
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzac()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2591
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    .line 2592
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 2593
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2594
    :cond_3d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 2596
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v3, v5, v11}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzho;Ljava/lang/String;)V

    .line 2597
    invoke-direct {v1, v10}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    .line 2598
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    .line 2599
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 2600
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2602
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 2603
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-boolean v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzn:Z

    .line 2604
    invoke-virtual {v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzmg;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2605
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    .line 2606
    :cond_3e
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzq(J)V

    .line 2607
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzr(J)V

    .line 2608
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    .line 2609
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Ljava/lang/String;)V

    .line 2610
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    .line 2611
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Ljava/lang/String;)V

    .line 2612
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzn(J)V

    .line 2613
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzk(J)V

    .line 2614
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Z)V

    .line 2615
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzr:J

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzf;->zzl(J)V

    .line 2616
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 2617
    :cond_3f
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2618
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 2619
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2620
    :cond_40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 2621
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2622
    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzj(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v10, 0x0

    .line 2623
    :goto_18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_43

    .line 2624
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v11

    .line 2625
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v11

    .line 2626
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zznx;

    iget-wide v12, v12, Lcom/google/android/gms/measurement/internal/zznx;->zzd:J

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v11

    .line 2627
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v12

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    invoke-virtual {v12, v11, v13}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;Ljava/lang/Object;)V

    .line 2628
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2629
    const-string v11, "_sid"

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_42

    .line 2630
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzv()J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-eqz v13, :cond_42

    .line 2632
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Ljava/lang/String;)J

    move-result-wide v11

    .line 2633
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzv()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-eqz v15, :cond_42

    .line 2634
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_42
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 2637
    :cond_43
    :try_start_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj;)J

    move-result-wide v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2645
    :try_start_d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    .line 2646
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Lcom/google/android/gms/measurement/internal/zzba;

    if-eqz v8, :cond_46

    .line 2647
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zze:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzba;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_44
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2648
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    :goto_19
    const/4 v8, 0x1

    goto :goto_1a

    .line 2651
    :cond_45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 2653
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v25

    .line 2654
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzx()J

    move-result-wide v26

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Ljava/lang/String;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, v8

    .line 2655
    invoke-virtual/range {v25 .. v34}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v8

    if-eqz v4, :cond_46

    .line 2656
    iget-wide v10, v8, Lcom/google/android/gms/measurement/internal/zzao;->zze:J

    .line 2657
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzc(Ljava/lang/String;)I

    move-result v4

    int-to-long v12, v4

    cmp-long v4, v10, v12

    if-gez v4, :cond_46

    goto :goto_19

    :cond_46
    const/4 v8, 0x0

    .line 2658
    :goto_1a
    invoke-virtual {v5, v0, v2, v3, v8}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzay;JZ)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2659
    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    goto :goto_1b

    :catch_1
    move-exception v0

    .line 2640
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2641
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Data loss. Failed to insert raw event metadata. appId"

    .line 2642
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2643
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2660
    :cond_47
    :goto_1b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2661
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 2665
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    .line 2666
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 2667
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    .line 2668
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v23

    const-wide/32 v4, 0x7a120

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2669
    const-string v3, "Background event processing time, ms"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2663
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 2664
    throw v0
.end method

.method private final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 289
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzad:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzax;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzad:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final zzg(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/Boolean;
    .locals 3

    .line 354
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Ljava/lang/Boolean;

    .line 355
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcz:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzad:Ljava/lang/String;

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 358
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzad:Ljava/lang/String;

    .line 359
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzgn;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgn;->zza()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    .line 361
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzno;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzir;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static zzh(Lcom/google/android/gms/measurement/internal/zzn;)Z
    .locals 1

    .line 2671
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzx()J
    .locals 8

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 44
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzmg;->zze:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznw;->zzv()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 47
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmg;->zze:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 50
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzy()Lcom/google/android/gms/measurement/internal/zzgl;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zze:Lcom/google/android/gms/measurement/internal/zzgl;

    if-eqz v0, :cond_0

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzz()Lcom/google/android/gms/measurement/internal/zzna;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzf:Lcom/google/android/gms/measurement/internal/zzna;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzna;

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfl$zza;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzb()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>()V

    .line 64
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;Lcom/google/android/gms/measurement/internal/zzis;Lcom/google/android/gms/measurement/internal/zzaj;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zzb()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zznt;->zzc(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    const-string v3, "_npa"

    .line 70
    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 72
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaj;)I

    move-result p1

    :goto_0
    if-ne p1, v2, :cond_3

    .line 75
    const-string p1, "denied"

    goto :goto_1

    :cond_3
    const-string p1, "granted"

    .line 76
    :goto_1
    const-string v1, "ad_personalization"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;
    .locals 10

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzae:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzng$zzb;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzng$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzng;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznr;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    .line 87
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:Ljava/lang/String;

    .line 89
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzis;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 93
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzn:Z

    .line 94
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzmg;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 95
    :cond_1
    const-string v3, ""

    :goto_0
    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzf;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzho;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 105
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzh(Ljava/lang/String;)V

    .line 106
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzn:Z

    if-eqz v3, :cond_7

    .line 107
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 108
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/measurement/internal/zzmg;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 110
    const-string v5, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzdb:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v4, :cond_7

    .line 112
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zza()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzdg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v4, "_id"

    .line 118
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v4, "_lair"

    .line 122
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v2

    if-nez v2, :cond_9

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    .line 125
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-wide/16 v5, 0x1

    .line 126
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v5, "auto"

    const-string v6, "_lair"

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    goto :goto_1

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzdb:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 131
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 134
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzis;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Ljava/lang/String;)V

    .line 135
    :cond_9
    :goto_1
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 136
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)V

    .line 137
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 138
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zze(Ljava/lang/String;)V

    .line 139
    :cond_a
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    .line 140
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzn(J)V

    .line 141
    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 142
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(Ljava/lang/String;)V

    .line 143
    :cond_c
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(J)V

    .line 144
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 145
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Ljava/lang/String;)V

    .line 146
    :cond_d
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzk(J)V

    .line 147
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzb(Z)V

    .line 148
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 149
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzg(Ljava/lang/String;)V

    .line 150
    :cond_e
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzn:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Z)V

    .line 151
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/Boolean;)V

    .line 152
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzl(J)V

    .line 153
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbq:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 156
    :cond_f
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzj(Ljava/lang/String;)V

    .line 157
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzop;->zza()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbp:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 158
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/util/List;)V

    goto :goto_2

    .line 159
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzop;->zza()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbo:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/util/List;)V

    .line 161
    :cond_12
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqw;->zza()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbt:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zznw;->zzf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 164
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzc(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbu:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 166
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzk(Ljava/lang/String;)V

    .line 167
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 168
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzaa:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzf;->zza(I)V

    .line 169
    :cond_14
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzx:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzt(J)V

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcz:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 172
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzad:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzi(Ljava/lang/String;)V

    .line 173
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzas()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    :cond_16
    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 1

    .line 1438
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10

    .line 1442
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1444
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1447
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1448
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1449
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzh(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1451
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 1452
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 1454
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 1455
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 1456
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1461
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1462
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v5

    .line 1463
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1464
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    if-eqz v1, :cond_2

    .line 1467
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v1, :cond_5

    .line 1470
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    if-eqz v1, :cond_3

    .line 1471
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 1473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 1474
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1475
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object p1

    .line 1476
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    .line 1478
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    .line 1479
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1480
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1481
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v2

    .line 1482
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1483
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1484
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1487
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1488
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 753
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 756
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 757
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 758
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 759
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 760
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v3

    .line 763
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 764
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzaf:Lcom/google/android/gms/measurement/internal/zzkx;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzag:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 765
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzaf:Lcom/google/android/gms/measurement/internal/zzkx;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 768
    :goto_1
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Landroid/os/Bundle;

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzkx;Landroid/os/Bundle;Z)V

    .line 769
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v3

    .line 770
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 772
    :cond_2
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v4, :cond_3

    .line 773
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 775
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 776
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/util/List;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 777
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()Landroid/os/Bundle;

    move-result-object v4

    .line 778
    const-string v5, "ga_safelisted"

    const-wide/16 v11, 0x1

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 779
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    move-object/from16 v16, v4

    move-wide/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    goto :goto_2

    .line 781
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    .line 783
    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v13, v3

    .line 785
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 787
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    .line 788
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 789
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 790
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    const-wide/16 v4, 0x0

    cmp-long v6, v7, v4

    if-gez v6, :cond_6

    .line 792
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    .line 793
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v4, "Invalid time querying timed out conditional properties"

    .line 794
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 795
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 796
    invoke-virtual {v3, v4, v5, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    .line 798
    :cond_6
    const-string v4, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 799
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 800
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 801
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v4, :cond_7

    .line 803
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 804
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v9, "User property timed out"

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 805
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v12

    .line 806
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 807
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v14

    .line 808
    invoke-virtual {v5, v9, v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 809
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v5, :cond_8

    .line 810
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzac;->zzg:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v5, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    invoke-direct {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 811
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 814
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    .line 815
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 816
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 817
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    if-gez v6, :cond_a

    .line 819
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    .line 820
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v4, "Invalid time querying expired conditional properties"

    .line 821
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 822
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 823
    invoke-virtual {v3, v4, v5, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    .line 825
    :cond_a
    const-string v4, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 826
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 827
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 829
    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 830
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v5, :cond_b

    .line 832
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v9

    .line 833
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v9

    const-string v11, "User property expired"

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 834
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v14

    .line 835
    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 836
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 837
    invoke-virtual {v9, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v9, :cond_c

    .line 840
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 843
    :cond_d
    move-object v3, v4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_e

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 844
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v11, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    invoke-direct {v1, v11, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_7

    .line 847
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    iget-object v4, v13, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 848
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 849
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 850
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 851
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    if-gez v6, :cond_f

    .line 853
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v5

    .line 854
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v5

    const-string v6, "Invalid time querying triggered conditional properties"

    .line 855
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 856
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 858
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 859
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_8

    .line 860
    :cond_f
    const-string v5, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 861
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v4, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-virtual {v3, v5, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 864
    :goto_8
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 865
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v12, :cond_10

    .line 867
    iget-object v3, v12, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 868
    new-instance v4, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v5, v12, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 869
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v4

    move-object v4, v5

    iget-object v5, v12, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    move-object v9, v6

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    .line 870
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v9

    move-object v9, v3

    move-object/from16 v3, v19

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 871
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 873
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 874
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v12, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 875
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v9

    .line 876
    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 877
    invoke-virtual {v4, v5, v6, v9, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 878
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 879
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v12, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 880
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 881
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v9

    .line 882
    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 883
    invoke-virtual {v4, v5, v6, v9, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 884
    :goto_a
    iget-object v4, v12, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v4, :cond_12

    .line 885
    iget-object v4, v12, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_12
    new-instance v4, Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Lcom/google/android/gms/measurement/internal/zznx;)V

    iput-object v4, v12, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    const/4 v3, 0x1

    .line 887
    iput-boolean v3, v12, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    .line 888
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Z

    goto/16 :goto_9

    .line 890
    :cond_13
    invoke-direct {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 891
    move-object v2, v11

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_b
    if-ge v10, v2, :cond_14

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v10, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 892
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v4, v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_b

    .line 894
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    .line 897
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 898
    throw v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 899
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 900
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 903
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzf;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 905
    const-string v4, "_ui"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 906
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 908
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    .line 910
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 911
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    move-object v4, v2

    .line 913
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzn;

    move-object v5, v4

    .line 914
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    .line 915
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v5

    move-object v8, v6

    .line 916
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v6

    move-object v9, v8

    .line 917
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()Ljava/lang/String;

    move-result-object v8

    move-object v11, v9

    .line 918
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v9

    move-object v13, v11

    .line 919
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()J

    move-result-wide v11

    .line 920
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzar()Z

    move-result v14

    .line 921
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Ljava/lang/String;

    move-result-object v16

    .line 922
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()J

    move-result-wide v17

    .line 923
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzaq()Z

    move-result v22

    .line 924
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzaa()Ljava/lang/String;

    move-result-object v24

    .line 925
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzx()Ljava/lang/Boolean;

    move-result-object v25

    .line 926
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v26

    .line 927
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzan()Ljava/util/List;

    move-result-object v28

    .line 928
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzis;->zzh()Ljava/lang/String;

    move-result-object v30

    .line 929
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzat()Z

    move-result v33

    .line 930
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzw()J

    move-result-wide v34

    .line 931
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzis;->zza()I

    move-result v36

    .line 932
    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/zzng;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzax;->zzf()Ljava/lang/String;

    move-result-object v37

    .line 933
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zza()I

    move-result v38

    .line 934
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()J

    move-result-wide v39

    .line 935
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzam()Ljava/lang/String;

    move-result-object v41

    .line 936
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzf;->zzak()Ljava/lang/String;

    move-result-object v42

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v29, 0x0

    const-string v31, ""

    const/16 v32, 0x0

    invoke-direct/range {v2 .. v42}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 901
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzf;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V
    .locals 8

    .line 619
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 622
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    .line 623
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 624
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcz:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 625
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 628
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 629
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v1

    .line 630
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzno;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzc()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzir;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 637
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->zzj:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_0

    .line 633
    :cond_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 634
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zza()I

    move-result v6

    .line 635
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;I)V

    goto :goto_0

    .line 631
    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 638
    :goto_0
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzno;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzd()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzir;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 645
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzj:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_2

    .line 641
    :cond_2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 642
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zza()I

    move-result v1

    .line 643
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;I)V

    goto :goto_2

    .line 639
    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzi:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_2

    .line 647
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 650
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 651
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zze()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 653
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 654
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zza()I

    move-result v3

    .line 655
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;I)V

    goto :goto_1

    .line 656
    :cond_5
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzj:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 657
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzf()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 658
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    .line 659
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzis;->zza()I

    move-result v1

    .line 660
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;I)V

    goto :goto_2

    .line 661
    :cond_6
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzj:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 662
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 667
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v3

    .line 668
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;Lcom/google/android/gms/measurement/internal/zzis;Lcom/google/android/gms/measurement/internal/zzaj;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 670
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 671
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 674
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 677
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzab()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzn;

    .line 678
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_10

    .line 683
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;)Lcom/google/android/gms/measurement/internal/zzai;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzai;

    if-ne v1, v4, :cond_11

    .line 684
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 686
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    .line 687
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 690
    const-string v2, "tcf"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zznx;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 691
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzh:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto/16 :goto_5

    .line 693
    :cond_a
    const-string v2, "app"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznx;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 694
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzf:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_5

    .line 696
    :cond_b
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzd:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_5

    .line 698
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzx()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 699
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_d

    .line 700
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zzc()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_f

    :cond_d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_e

    .line 701
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zzc()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    goto :goto_4

    .line 703
    :cond_e
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzd:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_5

    .line 702
    :cond_f
    :goto_4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzf:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzis$zza;Lcom/google/android/gms/measurement/internal/zzai;)V

    goto :goto_5

    .line 705
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaj;)I

    move-result v1

    .line 707
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v2

    .line 708
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v2

    .line 709
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v2

    int-to-long v3, v1

    .line 710
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v1

    .line 711
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs$zzn;

    .line 712
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzn;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 713
    :cond_11
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 714
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqx;->zza()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 715
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzn(Ljava/lang/String;)Z

    move-result p1

    .line 716
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 717
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 718
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 719
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 720
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v0

    .line 721
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    .line 722
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzf()Ljava/util/List;

    move-result-object v3

    .line 723
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 724
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_tcfd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 726
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/gms/measurement/internal/zzmw;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v3

    .line 729
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v3

    .line 730
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object p1

    .line 731
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto :goto_8

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 734
    :cond_13
    :goto_8
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    return-void

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 13

    .line 1880
    const-string v0, "_id"

    .line 1881
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1882
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1883
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzh(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1885
    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v1, :cond_1

    .line 1886
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 1888
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zznw;->zzb(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-eqz v5, :cond_3

    .line 1891
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    .line 1892
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1893
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 1894
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 1895
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    .line 1896
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 1899
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 1902
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    .line 1903
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    .line 1904
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 1905
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1907
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1908
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1909
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v12, v1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 1910
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 1911
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 1914
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    .line 1915
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zznw;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    :goto_2
    return-void

    .line 1918
    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1919
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    .line 1920
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1923
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    const-string v4, "_sno"

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1924
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_8

    .line 1925
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    .line 1927
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 1928
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v7, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 1929
    invoke-virtual {v4, v7, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1931
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v3

    const-string v4, "_s"

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1933
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    .line 1934
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1935
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v7, "Backfill the session number. Last used session number"

    .line 1936
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    const-wide/16 v3, 0x0

    :goto_3
    const-wide/16 v11, 0x1

    add-long/2addr v3, v11

    move-wide v11, v3

    .line 1938
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznv;

    const-string v4, "_sno"

    .line 1939
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1940
    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1941
    :cond_b
    new-instance v4, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1942
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    .line 1943
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1944
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1945
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    .line 1946
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v3

    .line 1947
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznx;->zzb:Ljava/lang/String;

    .line 1948
    const-string v6, "Setting user property"

    invoke-virtual {v1, v6, v3, v10, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1949
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 1950
    :try_start_0
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1952
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1953
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1954
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1955
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v3, "_lair"

    .line 1956
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :cond_c
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 1958
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    move-result v0

    .line 1959
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1961
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Ljava/lang/String;)J

    move-result-wide v1

    .line 1962
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1964
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzf;->zzs(J)V

    .line 1965
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzas()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1966
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 1967
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V

    if-nez v0, :cond_e

    .line 1969
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 1970
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 1971
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v1

    .line 1972
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 1973
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1974
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    .line 1975
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1978
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1979
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 466
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzq:Ljava/util/List;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzq:Ljava/util/List;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1010
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 1012
    :try_start_0
    new-array p4, v0, [B

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1015
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    .line 1019
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 1020
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    const/16 v4, 0x194

    if-nez v2, :cond_7

    if-ne p2, v4, :cond_4

    goto :goto_1

    .line 1055
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzf;->zzm(J)V

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 1057
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzi(Ljava/lang/String;)V

    .line 1060
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1061
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmg;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 1062
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    .line 1066
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1067
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmg;->zzb:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 1068
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    goto/16 :goto_8

    :cond_7
    :goto_1
    const/4 p3, 0x0

    if-eqz p5, :cond_8

    .line 1022
    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object v2, p3

    :goto_2
    if-eqz v2, :cond_9

    .line 1023
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1024
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v2, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 1026
    const-string v5, "ETag"

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eqz p5, :cond_b

    .line 1027
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object p5, p3

    :goto_5
    if-eq p2, v4, :cond_d

    if-ne p2, v3, :cond_c

    goto :goto_6

    .line 1035
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p3

    invoke-virtual {p3, p1, p4, v2, p5}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_e

    .line 1036
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1037
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    .line 1038
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 1029
    :cond_d
    :goto_6
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    move-result-object p5

    if-nez p5, :cond_e

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3, p3}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_e

    .line 1031
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1032
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    .line 1033
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 1040
    :cond_e
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    .line 1041
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    if-ne p2, v4, :cond_f

    .line 1043
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    .line 1044
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 1045
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 1046
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 1047
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 1048
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 1049
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1050
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1051
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzh()Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzu()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzac()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzw()V

    goto :goto_8

    .line 1053
    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    .line 1069
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1070
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1074
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    .line 1075
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    :catchall_0
    move-exception p1

    .line 1072
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1073
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 1077
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzu:Z

    .line 1078
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    .line 1079
    throw p1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V
    .locals 6

    .line 527
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzg(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzt(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbw:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 536
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x0

    .line 538
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 542
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    const-string v0, "_id"

    .line 544
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 546
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 547
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 548
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 550
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 551
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zza()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 554
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzae:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzng$zzb;

    if-eqz v0, :cond_7

    .line 555
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzng$zzb;->zzb:J

    .line 556
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzau:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 557
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_8

    .line 558
    :cond_7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzng$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzng$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zznr;)V

    .line 559
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzae:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzng$zzb;->zza:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 561
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 562
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :cond_a
    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V
    .locals 10

    .line 1710
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1711
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1712
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoo;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcr:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1713
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x64

    .line 1715
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v0

    .line 1716
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    .line 1717
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzad:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V

    .line 1719
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 1721
    invoke-static {p2, v1}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object p2

    .line 1722
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p2

    .line 1725
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1726
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1727
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzir;

    if-ne p2, v0, :cond_1

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string v0, "Generated _dcu event for"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1729
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1731
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 1732
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzx()J

    move-result-wide v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 1733
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p1

    .line 1734
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    .line 1735
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzaw:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 1737
    const-string p1, "_r"

    const-wide/16 v0, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1739
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 1740
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzx()J

    move-result-wide v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1741
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(JLjava/lang/String;ZZZZZZ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p1

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    .line 1744
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "_dcu realtime event count"

    invoke-virtual {v0, v1, v3, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1745
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzah:Lcom/google/android/gms/measurement/internal/zzny;

    const-string v0, "_dcu"

    invoke-interface {p1, v3, v0, p2}, Lcom/google/android/gms/measurement/internal/zzny;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    move-object v3, p1

    .line 1747
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzad:Ljava/util/Map;

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)V
    .locals 1

    .line 1704
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1705
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1706
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkx;)V
    .locals 1

    .line 1579
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1580
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzag:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1581
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzag:Ljava/lang/String;

    .line 1582
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzaf:Lcom/google/android/gms/measurement/internal/zzkx;

    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 8

    .line 1498
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1500
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzh(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1502
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 1503
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 1505
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzg(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1506
    const-string v1, "_npa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 1508
    new-instance v2, Lcom/google/android/gms/measurement/internal/zznv;

    .line 1509
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 1510
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    const-string v3, "_npa"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 1513
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    .line 1515
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v1

    .line 1516
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1517
    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1518
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 1519
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    .line 1520
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1521
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1522
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 1523
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1525
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1526
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V

    .line 1528
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    .line 1529
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string v0, "User property removed"

    .line 1530
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v1

    .line 1531
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1532
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1535
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1536
    throw p1
.end method

.method final zza(Z)V
    .locals 0

    .line 1080
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    return-void
.end method

.method final zza(ZILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 6

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1084
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    .line 1086
    :try_start_0
    new-array p4, p5, [B

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 1088
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    .line 1089
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_2

    const/16 v2, 0xcc

    if-ne p2, v2, :cond_d

    :cond_2
    if-nez p3, :cond_d

    .line 1091
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 1094
    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1095
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzmg;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 1098
    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1099
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzmg;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 1100
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    .line 1101
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_0

    .line 1107
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p2, "Purged empty bundles"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 1103
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 1104
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p3, "Successful upload. Got network response. code, size"

    .line 1105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1106
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1110
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1111
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1112
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1113
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1114
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 1115
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    .line 1116
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1117
    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    invoke-virtual {p4, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_9

    goto :goto_2

    .line 1119
    :cond_9
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception p4

    .line 1122
    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p3

    const-string v0, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v0, p4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    throw p4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 1125
    :try_start_6
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzaa:Ljava/util/List;

    if-eqz p4, :cond_a

    .line 1126
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_2

    .line 1127
    :cond_a
    throw p3

    .line 1128
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1129
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1133
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzaa:Ljava/util/List;

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzh()Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzge;->zzu()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzac()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzw()V

    goto :goto_3

    :cond_c
    const-wide/16 p1, -0x1

    .line 1136
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzab:J

    .line 1137
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    .line 1138
    :goto_3
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 1131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1132
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 1141
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1145
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 1146
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p4, "Network upload failed. Will retry later. code, error"

    .line 1147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1149
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1150
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmg;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_e

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_f

    .line 1154
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1155
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmg;->zzb:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 1156
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/util/List;)V

    .line 1157
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1158
    :goto_4
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzv:Z

    .line 1159
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    :catchall_1
    move-exception p1

    .line 1161
    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzv:Z

    .line 1162
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    .line 1163
    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzis;

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    .line 312
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)V

    :cond_1
    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 4

    .line 376
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zznk;-><init>(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 377
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 378
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 383
    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 1

    .line 1617
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1619
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 9

    .line 1621
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1623
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1628
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1629
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzh(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1631
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 1632
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 1634
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzac;)V

    const/4 p1, 0x0

    .line 1635
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    .line 1636
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 1639
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1640
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    .line 1641
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1642
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 1644
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1645
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v4

    .line 1646
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 1647
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 1648
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    if-eqz v2, :cond_3

    .line 1649
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    .line 1650
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    .line 1651
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzh:J

    .line 1652
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    .line 1653
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 1654
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    .line 1655
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 1656
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    goto :goto_0

    .line 1657
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1658
    new-instance v2, Lcom/google/android/gms/measurement/internal/zznv;

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 1659
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v6

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    const/4 p1, 0x1

    .line 1660
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    .line 1662
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zze:Z

    if-eqz v1, :cond_6

    .line 1663
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 1664
    new-instance v2, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1665
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    .line 1666
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1667
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1669
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1670
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v3, "User property updated immediately"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1671
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v5

    .line 1672
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 1673
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1674
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1675
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v3, "(2)Too many active user properties, ignoring"

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1676
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1677
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v5

    .line 1678
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    .line 1679
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 1680
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz p1, :cond_6

    .line 1681
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    .line 1682
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1683
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1685
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 1686
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1687
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v2

    .line 1688
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 1689
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1690
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1691
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 1692
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 1693
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1694
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v2

    .line 1695
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzac;->zzc:Lcom/google/android/gms/measurement/internal/zznv;

    .line 1696
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1697
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1698
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1701
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1702
    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzs;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzg:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzs;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1164
    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "com.android.vending"

    const-string v0, "_npa"

    const-string v7, "_uwa"

    const-string v8, "app_id=?"

    .line 1165
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1166
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1167
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1169
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzng;->zzh(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 1171
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_1

    .line 1173
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    .line 1174
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1175
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzf;->zzd(J)V

    .line 1176
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 1177
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v9

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzgy;->zzj(Ljava/lang/String;)V

    .line 1178
    :cond_1
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v9, :cond_2

    .line 1179
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    return-void

    .line 1181
    :cond_2
    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_3

    .line 1183
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    :cond_3
    move-wide/from16 v16, v12

    .line 1185
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzho;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v9

    .line 1186
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaz;->zzm()V

    .line 1187
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzm:I

    const/4 v13, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v13, :cond_4

    .line 1189
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v14

    .line 1190
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1191
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 1192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1193
    const-string v10, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v14, v10, v15, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    .line 1195
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 1197
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1198
    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznx;

    move-result-object v10

    .line 1199
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzg(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v10, :cond_5

    .line 1200
    const-string v14, "auto"

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zznx;->zzb:Ljava/lang/String;

    .line 1201
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_5
    if-eqz v11, :cond_8

    .line 1203
    new-instance v14, Lcom/google/android/gms/measurement/internal/zznv;

    const-string v15, "_npa"

    .line 1204
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v22, 0x1

    goto :goto_0

    :cond_6
    const-wide/16 v22, 0x0

    :goto_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v22, 0x1

    const-string v19, "auto"

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_7

    .line 1205
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    iget-object v10, v14, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    .line 1206
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1207
    :cond_7
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    :cond_8
    if-eqz v10, :cond_9

    .line 1209
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1211
    :cond_9
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1213
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    .line 1214
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Ljava/lang/String;

    .line 1215
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaa()Ljava/lang/String;

    move-result-object v10

    .line 1216
    invoke-static {v11, v14, v15, v10}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1217
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v10

    .line 1218
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v10

    const-string v11, "New GMP App Id passed in. Removing cached database data. appId"

    .line 1219
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 1220
    invoke-virtual {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1221
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v11

    .line 1222
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 1223
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1224
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1226
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v14

    .line 1227
    const-string v15, "events"

    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1228
    const-string v12, "user_attributes"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1229
    const-string v12, "conditional_properties"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1230
    const-string v12, "apps"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1231
    const-string v12, "raw_events"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1232
    const-string v12, "raw_events_metadata"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1233
    const-string v12, "event_filters"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1234
    const-string v12, "property_filters"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1235
    const-string v12, "audience_filter_values"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1236
    const-string v12, "consent_settings"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1237
    const-string v12, "default_event_params"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v15, v12

    .line 1238
    const-string v12, "trigger_uris"

    invoke-virtual {v0, v12, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v15, v0

    if-lez v15, :cond_a

    .line 1240
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1243
    :try_start_2
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v8

    .line 1244
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v8

    const-string v10, "Error deleting application data. appId, error"

    .line 1245
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const/4 v0, 0x0

    :cond_b
    if-eqz v0, :cond_f

    .line 1249
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v10

    const-wide/32 v14, -0x80000000

    cmp-long v8, v10, v14

    if-eqz v8, :cond_c

    .line 1250
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v10

    move-wide/from16 v18, v14

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    cmp-long v8, v10, v14

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_3

    :cond_c
    move-wide/from16 v18, v14

    :cond_d
    const/4 v8, 0x0

    .line 1251
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v10

    .line 1253
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v11

    cmp-long v0, v11, v18

    if-nez v0, :cond_e

    if-eqz v10, :cond_e

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    .line 1254
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    :goto_4
    or-int/2addr v0, v8

    if-eqz v0, :cond_f

    .line 1256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1257
    const-string v8, "_pv"

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v15, "_au"

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v18, v16

    const-string v17, "auto"

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    move-wide/from16 v16, v18

    .line 1259
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1260
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/zzf;

    if-nez v9, :cond_10

    .line 1264
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v10, "_f"

    .line 1265
    invoke-virtual {v0, v8, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    goto :goto_5

    :cond_10
    if-ne v9, v13, :cond_11

    .line 1268
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v10, "_v"

    .line 1269
    invoke-virtual {v0, v8, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_26

    const-wide/32 v10, 0x36ee80

    .line 1271
    div-long v14, v16, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v18, v10

    const-wide/16 v10, 0x1

    add-long/2addr v14, v10

    mul-long v14, v14, v18

    .line 1272
    const-string v8, "_dac"

    const-string v12, "_et"

    const-string v10, "_r"

    const-string v11, "_c"

    if-nez v9, :cond_24

    move-wide/from16 v18, v14

    .line 1273
    :try_start_3
    new-instance v14, Lcom/google/android/gms/measurement/internal/zznv;

    const-string v15, "_fot"

    .line 1274
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1278
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1280
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzl:Lcom/google/android/gms/measurement/internal/zzgv;

    .line 1281
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzgv;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 1283
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    goto/16 :goto_7

    .line 1289
    :cond_12
    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1290
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzho;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1291
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgv;->zza()Z

    move-result v14

    if-nez v14, :cond_13

    .line 1292
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v6, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1294
    :cond_13
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {v14, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/measurement/internal/zzgv;Ljava/lang/String;)V

    .line 1295
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1296
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1297
    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    new-instance v15, Landroid/content/ComponentName;

    const-string v13, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v15, v6, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1299
    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_14

    .line 1301
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1302
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v6, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 1304
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    const/4 v15, 0x0

    .line 1306
    invoke-virtual {v13, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 1307
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_17

    .line 1308
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 1309
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_19

    .line 1310
    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1311
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_16

    .line 1313
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1314
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgv;->zza()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1315
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1316
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1317
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v13

    const/4 v15, 0x1

    .line 1318
    invoke-virtual {v0, v13, v6, v14, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1319
    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1320
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    .line 1321
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v6

    const-string v13, "Install Referrer Service is"

    if-eqz v0, :cond_15

    .line 1322
    const-string v0, "available"

    goto :goto_6

    :cond_15
    const-string v0, "not available"

    :goto_6
    invoke-virtual {v6, v13, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 1325
    :try_start_5
    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1326
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    .line 1327
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v6

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 1328
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1329
    invoke-virtual {v6, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 1331
    :cond_16
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1332
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v6, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 1334
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto :goto_8

    .line 1336
    :cond_17
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1337
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v6, "Play Service for fetching Install Referrer is unavailable on device"

    .line 1339
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto :goto_8

    .line 1284
    :cond_18
    :goto_7
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    .line 1285
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzw()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v6, "Install Referrer Reporter was called with invalid app package name"

    .line 1287
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 1342
    :cond_19
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1343
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1344
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    .line 1345
    invoke-virtual {v6, v11, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1346
    invoke-virtual {v6, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v9, 0x0

    .line 1347
    invoke-virtual {v6, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1348
    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1349
    invoke-virtual {v6, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1350
    invoke-virtual {v6, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1351
    invoke-virtual {v6, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1352
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    if-eqz v0, :cond_1a

    .line 1353
    invoke-virtual {v6, v8, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1354
    :cond_1a
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 1355
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 1356
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1357
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1358
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 1359
    const-string v9, "first_open_count"

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 1362
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1363
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1365
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    .line 1367
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1368
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1b
    :goto_9
    const-wide/16 v20, 0x0

    goto/16 :goto_10

    .line 1371
    :cond_1c
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1372
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v8, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_2
    move-exception v0

    .line 1375
    :try_start_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v11

    .line 1376
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    .line 1377
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1378
    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_21

    .line 1380
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v20, 0x0

    cmp-long v13, v11, v20

    if-eqz v13, :cond_21

    .line 1382
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v13

    if-eqz v0, :cond_1f

    .line 1383
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzbl:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v20, 0x0

    cmp-long v0, v9, v20

    if-nez v0, :cond_1e

    const-wide/16 v13, 0x1

    .line 1385
    invoke-virtual {v6, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    :cond_1d
    const-wide/16 v13, 0x1

    .line 1386
    invoke-virtual {v6, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    :goto_b
    const/4 v15, 0x0

    goto :goto_c

    :cond_1f
    const/4 v15, 0x1

    .line 1388
    :goto_c
    new-instance v14, Lcom/google/android/gms/measurement/internal/zznv;

    move v0, v15

    const-string v15, "_fi"

    if-eqz v0, :cond_20

    const-wide/16 v11, 0x1

    goto :goto_d

    :cond_20
    const-wide/16 v11, 0x0

    .line 1389
    :goto_d
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1393
    :cond_21
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1394
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v8, v15}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_e

    :catch_3
    move-exception v0

    .line 1397
    :try_start_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v7

    .line 1398
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v7

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    .line 1399
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1400
    invoke-virtual {v7, v11, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1b

    .line 1402
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v24, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_22

    const-wide/16 v13, 0x1

    .line 1403
    invoke-virtual {v6, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_f

    :cond_22
    const-wide/16 v13, 0x1

    .line 1404
    :goto_f
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    .line 1405
    invoke-virtual {v6, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    :goto_10
    cmp-long v0, v9, v20

    if-ltz v0, :cond_23

    .line 1407
    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1408
    :cond_23
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v15, "_f"

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v0, v6}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v18, v16

    const-string v17, "auto"

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    .line 1409
    invoke-direct {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_11

    :cond_24
    move-wide/from16 v18, v14

    const/4 v15, 0x1

    if-ne v9, v15, :cond_27

    .line 1411
    new-instance v14, Lcom/google/android/gms/measurement/internal/zznv;

    const-string v15, "_fvt"

    .line 1412
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1416
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1417
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1418
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    .line 1419
    invoke-virtual {v0, v11, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1420
    invoke-virtual {v0, v10, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1421
    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1422
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    if-eqz v3, :cond_25

    .line 1423
    invoke-virtual {v0, v8, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1424
    :cond_25
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v15, "_v"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v18, v16

    const-string v17, "auto"

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    .line 1425
    invoke-direct {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_11

    .line 1426
    :cond_26
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    if-eqz v0, :cond_27

    .line 1428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1429
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v15, "_cd"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Landroid/os/Bundle;)V

    move-wide/from16 v18, v16

    const-string v17, "auto"

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzba;Ljava/lang/String;J)V

    .line 1430
    invoke-direct {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1431
    :cond_27
    :goto_11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1432
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-void

    :catchall_0
    move-exception v0

    .line 1434
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 1435
    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzd()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7

    .line 1537
    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzaa:Ljava/util/List;

    .line 1539
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1540
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1541
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1542
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1543
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 1544
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1545
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 1546
    const-string v5, "apps"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1547
    const-string v6, "events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1548
    const-string v6, "user_attributes"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1549
    const-string v6, "conditional_properties"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1550
    const-string v6, "raw_events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1551
    const-string v6, "raw_events_metadata"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1552
    const-string v6, "queue"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1553
    const-string v6, "audience_filter_values"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1554
    const-string v6, "main_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1555
    const-string v6, "default_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1556
    const-string v6, "trigger_uris"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    .line 1558
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1561
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1562
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    .line 1563
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1564
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-eqz v0, :cond_2

    .line 1565
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_2
    return-void
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzf()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 4

    .line 1568
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1569
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1570
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1571
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzz:Ljava/lang/String;

    .line 1572
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v0

    .line 1573
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    .line 1574
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    const-string v2, "Setting DMA consent. package, consent"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1575
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1576
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzd:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzan;

    return-object v0
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 5

    .line 1585
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1586
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 1587
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1588
    iget v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzy:I

    .line 1589
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:Ljava/lang/String;

    .line 1590
    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/zzis;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v0

    .line 1591
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v1

    .line 1592
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 1593
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Setting consent, package, consent"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1594
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1595
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)V

    .line 1596
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zza()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzdg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1598
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzis;->zzc(Lcom/google/android/gms/measurement/internal/zzis;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1599
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzd(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_1
    return-void
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzfw;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzk()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzge;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzc:Lcom/google/android/gms/measurement/internal/zzge;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzge;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzb:Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgy;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzgb;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    return-object v0
.end method

.method final zzk()Lcom/google/android/gms/measurement/internal/zzho;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzhh;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzi:Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkv;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzmg;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzne;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzk:Lcom/google/android/gms/measurement/internal/zzne;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zznt;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzh:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zznf;)Lcom/google/android/gms/measurement/internal/zznf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznt;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zznw;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzt()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .locals 4

    .line 471
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 472
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    .line 473
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzo:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzo:Z

    .line 475
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzy:Ljava/nio/channels/FileChannel;

    .line 478
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zzh()Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzab()I

    move-result v1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    if-le v0, v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 487
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 488
    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-ge v0, v1, :cond_2

    .line 492
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzy:Ljava/nio/channels/FileChannel;

    .line 493
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 495
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    .line 496
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 498
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 500
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 501
    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()V
    .locals 2

    .line 506
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzn:Z

    if-eqz v0, :cond_0

    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzt()V
    .locals 1

    .line 1005
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzt:I

    return-void
.end method

.method final zzu()V
    .locals 1

    .line 1436
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzs:I

    return-void
.end method

.method protected final zzv()V
    .locals 5

    .line 1607
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzv()V

    .line 1610
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1611
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmg;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 1614
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmg;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 1615
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V

    return-void
.end method

.method final zzw()V
    .locals 27

    move-object/from16 v1, p0

    .line 1981
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 1982
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzs()V

    const/4 v0, 0x1

    .line 1983
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    const/4 v7, 0x0

    .line 1984
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzr()Lcom/google/android/gms/measurement/internal/zzlf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlf;->zzab()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1986
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    .line 1987
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 1988
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 1990
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 1992
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1993
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1994
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 1995
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 1997
    :cond_1
    :try_start_2
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzp:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 1998
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1999
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 2000
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 2004
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2005
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzz:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 2007
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2008
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 2009
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 2011
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzh()Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzge;->zzu()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2012
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 2013
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzab()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2014
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 2015
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 2017
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 2018
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzas:Lcom/google/android/gms/measurement/internal/zzfo;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v6

    .line 2019
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzh()J

    move-result-wide v10

    sub-long v10, v2, v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    .line 2021
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2023
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2026
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2027
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzr:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2028
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpz;->zza()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzcg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v10, v8, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2029
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v10

    const-string v11, "Notifying app that trigger URIs are available. App ID"

    invoke-virtual {v10, v11, v8}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2030
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2031
    const-string v11, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2034
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzm:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v8

    .line 2035
    invoke-virtual {v8, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2037
    :cond_7
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzr:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 2039
    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 2040
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzmg;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v10

    cmp-long v6, v10, v4

    if-eqz v6, :cond_9

    .line 2042
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v4

    .line 2043
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v4

    const-string v5, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v10, v2, v10

    .line 2044
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2045
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2046
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzan;->f_()Ljava/lang/String;

    move-result-object v6

    .line 2047
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v10, -0x1

    if-nez v4, :cond_27

    .line 2048
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzab:J

    cmp-long v8, v4, v10

    if-nez v8, :cond_a

    .line 2049
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzan;->b_()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzab:J

    .line 2050
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    .line 2051
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzg:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v4

    .line 2053
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    .line 2054
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzh:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2057
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    invoke-virtual {v8, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 2058
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    .line 2059
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2061
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 2062
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2063
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzam()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 2064
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzam()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_c
    move-object v5, v9

    :goto_2
    if-eqz v5, :cond_e

    const/4 v8, 0x0

    .line 2068
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_e

    .line 2069
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2070
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzam()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 2071
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzam()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2072
    invoke-interface {v4, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2075
    :cond_e
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzb()Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    move-result-object v5

    .line 2076
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 2077
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2079
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2080
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    .line 2081
    :goto_5
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v12

    .line 2082
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v13

    .line 2083
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 2084
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbh;->zzbs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x1

    goto :goto_6

    :cond_10
    const/4 v14, 0x0

    .line 2086
    :goto_6
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzk:Lcom/google/android/gms/measurement/internal/zzne;

    .line 2087
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzne;->zzb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 2088
    iget-object v9, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2089
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqw;->zza()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2090
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzbt:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2091
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zznw;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2092
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgy;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v9, :cond_11

    .line 2093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 2094
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    :cond_11
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v8, :cond_23

    .line 2096
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    .line 2097
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v7

    .line 2098
    move-object/from16 v18, v7

    check-cast v18, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2099
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move v0, v8

    move/from16 v18, v9

    const-wide/32 v8, 0x157c0

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    .line 2102
    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    const/4 v9, 0x0

    .line 2104
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    if-nez v11, :cond_12

    .line 2106
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :cond_12
    if-nez v12, :cond_13

    .line 2108
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2109
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :cond_13
    if-nez v13, :cond_14

    .line 2111
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2112
    :cond_14
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V

    if-nez v14, :cond_15

    .line 2114
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2115
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2116
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2118
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzz()Ljava/lang/String;

    move-result-object v8

    .line 2120
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_8

    :cond_16
    move/from16 v22, v0

    move-object/from16 v23, v4

    move/from16 v24, v11

    move/from16 v26, v12

    goto/16 :goto_a

    .line 2121
    :cond_17
    :goto_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzaa()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2123
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v22, v0

    move-object/from16 v23, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 2126
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 2127
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v9

    move-object/from16 v9, v24

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move/from16 v24, v11

    .line 2128
    const-string v11, "_fx"

    move/from16 v26, v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 2130
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    move/from16 v11, v24

    move-object/from16 v9, v25

    move/from16 v12, v26

    const/16 v20, 0x1

    const/16 v21, 0x1

    goto :goto_9

    .line 2132
    :cond_18
    const-string v11, "_f"

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 2134
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzdd:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 2136
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    const-string v11, "_pfo"

    .line 2137
    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 2139
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2141
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    const-string v11, "_uwa"

    .line 2142
    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 2144
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1a
    const/16 v21, 0x1

    :cond_1b
    move/from16 v11, v24

    move-object/from16 v9, v25

    move/from16 v12, v26

    goto :goto_9

    :cond_1c
    move/from16 v24, v11

    move/from16 v26, v12

    if-eqz v20, :cond_1d

    .line 2147
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2148
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    :cond_1d
    if-eqz v21, :cond_1e

    .line 2151
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 2152
    invoke-direct {v1, v8, v9, v0, v4}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2153
    :cond_1e
    :goto_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc()I

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_b

    :cond_1f
    move/from16 v22, v0

    move-object/from16 v23, v4

    move/from16 v24, v11

    move/from16 v26, v12

    .line 2154
    :goto_b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbf:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2155
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbx()[B

    move-result-object v0

    .line 2156
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zza([B)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2157
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqw;->zza()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2158
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbt:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2159
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zznw;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez v18, :cond_21

    .line 2160
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 2161
    :cond_21
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    :cond_22
    add-int/lit8 v0, v19, 0x1

    move/from16 v9, v18

    move/from16 v8, v22

    move-object/from16 v4, v23

    move/from16 v11, v24

    move/from16 v12, v26

    goto/16 :goto_7

    :cond_23
    move/from16 v22, v8

    .line 2163
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2164
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzcs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2165
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza()I

    move-result v0

    if-nez v0, :cond_24

    .line 2166
    invoke-direct {v1, v10}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xcc

    .line 2167
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzng;->zza(ZILjava/lang/Throwable;[BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v9, 0x0

    .line 2168
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 2169
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    .line 2172
    :cond_24
    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2173
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzi;)Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :cond_25
    const/4 v9, 0x0

    .line 2174
    :goto_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    .line 2175
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbx()[B

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2177
    :try_start_7
    invoke-direct {v1, v10}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/util/List;)V

    .line 2179
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzj:Lcom/google/android/gms/measurement/internal/zzmg;

    .line 2180
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmg;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    .line 2181
    const-string v0, "?"

    if-lez v22, :cond_26

    const/4 v2, 0x0

    .line 2183
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 2184
    :cond_26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2185
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v4, v14

    .line 2186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v9}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    .line 2187
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzv:Z

    .line 2188
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzh()Lcom/google/android/gms/measurement/internal/zzge;

    move-result-object v11

    new-instance v13, Ljava/net/URL;

    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznh;

    .line 2189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznh;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznh;

    .line 2190
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznh;->zzb()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzni;

    invoke-direct {v2, v1, v6}, Lcom/google/android/gms/measurement/internal/zzni;-><init>(Lcom/google/android/gms/measurement/internal/zzng;Ljava/lang/String;)V

    .line 2192
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 2193
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zznf;->zzak()V

    .line 2194
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2195
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v3

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzgi;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v12, v15

    move-object v15, v0

    move-object v0, v12

    move-object/from16 v16, v2

    move-object v12, v6

    :try_start_8
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzge;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgh;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v6, v12

    .line 2198
    :try_start_9
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzhh;->zza(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_e

    :catch_0
    move-object v6, v12

    goto :goto_d

    :catch_1
    move-object v0, v15

    .line 2201
    :catch_2
    :goto_d
    :try_start_a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 2202
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 2203
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznh;

    .line 2204
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznh;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2205
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 2207
    :cond_27
    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzab:J

    .line 2209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 2210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzh()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zza(J)Ljava/lang/String;

    move-result-object v0

    .line 2211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 2212
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2214
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Lcom/google/android/gms/measurement/internal/zzf;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_28
    :goto_e
    const/4 v9, 0x0

    .line 2215
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 2216
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    return-void

    :catchall_0
    move-exception v0

    const/4 v9, 0x0

    .line 2218
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzng;->zzw:Z

    .line 2219
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzng;->zzaa()V

    .line 2220
    throw v0
.end method
