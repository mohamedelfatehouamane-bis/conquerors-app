.class final Lcom/google/android/gms/internal/ads/zzlb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field private static final zzu:Lcom/google/android/gms/internal/ads/zzug;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzbq;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzug;

.field public final zzc:J

.field public final zzd:J

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zzib;

.field public final zzg:Z

.field public final zzh:Lcom/google/android/gms/internal/ads/zzwj;

.field public final zzi:Lcom/google/android/gms/internal/ads/zzyc;

.field public final zzj:Ljava/util/List;

.field public final zzk:Lcom/google/android/gms/internal/ads/zzug;

.field public final zzl:Z

.field public final zzm:I

.field public final zzn:I

.field public final zzo:Lcom/google/android/gms/internal/ads/zzbe;

.field public final zzp:Z

.field public volatile zzq:J

.field public volatile zzr:J

.field public volatile zzs:J

.field public volatile zzt:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzug;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlb;->zzu:Lcom/google/android/gms/internal/ads/zzug;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iput p15, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    move/from16 p1, p16

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzt:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzp:Z

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzyc;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 27

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbq;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzlb;->zzu:Lcom/google/android/gms/internal/ads/zzug;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v12

    sget-object v17, Lcom/google/android/gms/internal/ads/zzbe;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v26}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzug;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzlb;->zzu:Lcom/google/android/gms/internal/ads/zzug;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzug;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlb;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzt:J

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    move-wide/from16 v23, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    move-wide/from16 v25, v11

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    const/16 v27, 0x0

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzug;JJJJLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    const/16 v27, 0x0

    move-wide/from16 v23, p2

    move-wide/from16 v21, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-object/from16 v3, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    return-object v1
.end method

.method public final zzc(ZII)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzt:J

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    move-wide/from16 v19, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    move-wide/from16 v21, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    move-wide/from16 v23, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    move-wide/from16 v25, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    const/16 v27, 0x0

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlb;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    move-object v9, v1

    move/from16 v16, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzt:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    const/16 v27, 0x0

    move-object v1, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    return-object v1
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzt:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzbq;

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    const/16 v27, 0x0

    move/from16 v8, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    return-object v1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 30

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzug;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzf:Lcom/google/android/gms/internal/ads/zzib;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzh:Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzi:Lcom/google/android/gms/internal/ads/zzyc;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzk:Lcom/google/android/gms/internal/ads/zzug;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzm:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzo:Lcom/google/android/gms/internal/ads/zzbe;

    move-object/from16 v19, v1

    move/from16 v18, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzq:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzr:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzs:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlb;->zzt:J

    const/16 v27, 0x0

    move-wide/from16 v28, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v28

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzbq;Lcom/google/android/gms/internal/ads/zzug;JJILcom/google/android/gms/internal/ads/zzib;ZLcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzyc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzug;ZIILcom/google/android/gms/internal/ads/zzbe;JJJJZ)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final zzi()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zze:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlb;->zzn:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
