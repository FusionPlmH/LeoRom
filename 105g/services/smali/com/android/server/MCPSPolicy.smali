.class Lcom/android/server/MCPSPolicy;
.super Ljava/lang/Object;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MCPSPolicy$Builder;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x3

.field public static final ARGOS_BIG_CLAT_RPS:Ljava/lang/String; = "big_clat_rps"

.field public static final ARGOS_BIG_RMNET_CLAT_RPS:Ljava/lang/String; = "big_rmnet_clat_rps"

.field public static final ARGOS_BIG_RMNET_RPS:Ljava/lang/String; = "big_rmnet_rps"

.field public static final ARGOS_LIT_CLAT_RPS:Ljava/lang/String; = "lit_clat_rps"

.field public static final ARGOS_LIT_RMNET_CLAT_RPS:Ljava/lang/String; = "lit_rmnet_clat_rps"

.field public static final ARGOS_LIT_RMNET_RPS:Ljava/lang/String; = "lit_rmnet_rps"

.field public static final ARGOS_RPS_THRESH:Ljava/lang/String; = "mif_rps_thresh"

.field public static final BIG:I = 0x2

.field public static final INT_MCPS_ENABLE:Ljava/lang/String; = "mcps_enable"

.field public static final INT_MCPS_MODE:Ljava/lang/String; = "mcps_mode"

.field public static final INT_NW_FL_CLUSTER:Ljava/lang/String; = "mcps_set_cluster_for_newflow"

.field public static final INT_TH_ARPS_ACTIVE_PPS:Ljava/lang/String; = "mcps_arps_activate_pps_threshold"

.field public static final INT_TH_LOAD_B2L:Ljava/lang/String; = "mcps_big2lit_load_thresh"

.field public static final INT_TH_LOAD_L2B:Ljava/lang/String; = "mcps_lit2big_load_thresh"

.field public static final INT_TH_OAMASK_UTIL:Ljava/lang/String; = "mcps_oamask_util_threshold"

.field public static final INT_TH_PPS_B2L:Ljava/lang/String; = "mcps_big2lit_pps_thresh"

.field public static final INT_TH_PPS_L2B:Ljava/lang/String; = "mcps_lit2big_pps_thresh"

.field public static final LEVEL_DEFAULT:I = 0x2

.field public static final LEVEL_HIGH:I = 0x0

.field public static final LEVEL_LOW:I = 0x2

.field public static final LEVEL_MID:I = 0x1

.field public static final LEVEL_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.mcps_level"

.field public static final LIT:I = 0x1

.field public static final MASK_MCPS_ARPS:Ljava/lang/String; = "mcps_arps_cpu"

.field public static final MASK_RMNET_RPS:Ljava/lang/String; = "rmnet%d"

.field public static final NON:I

.field private static final defaultPolicy:Lcom/android/server/MCPSPolicy;

.field private static final mobileHighPolicy:Lcom/android/server/MCPSPolicy;

.field private static final mobileLowPolicy:Lcom/android/server/MCPSPolicy;

.field private static final mobileMidPolicy:Lcom/android/server/MCPSPolicy;


# instance fields
.field private mInts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v19, Lcom/android/server/MCPSPolicy;

    const-string v1, "06"

    const-string v2, "0"

    const-string v12, "c0"

    const-string v13, "30"

    const-string v14, "30"

    const-string v15, "30"

    const-string v16, "6"

    const-string v17, "6"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0xc8

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v19, Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;

    new-instance v0, Lcom/android/server/MCPSPolicy;

    const-string v21, "00"

    const-string/jumbo v22, "ff"

    const-string v32, "c0"

    const-string v33, "0"

    const-string v34, "0"

    const-string v35, "30"

    const-string v36, "0"

    const-string v37, "0"

    const/16 v23, 0x1

    const/16 v24, 0x5a

    const v25, 0xafc8

    const/16 v26, 0x5a

    const/16 v27, 0x7530

    const/16 v28, 0x32

    const/16 v29, 0x2710

    const/16 v30, 0x3

    const/16 v31, 0x1

    const/16 v38, 0x1f4

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v38}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->mobileHighPolicy:Lcom/android/server/MCPSPolicy;

    new-instance v0, Lcom/android/server/MCPSPolicy;

    const-string v2, "00"

    const-string/jumbo v3, "ff"

    const-string v13, "c0"

    const-string v14, "0"

    const-string v15, "0"

    const-string v16, "30"

    const-string v17, "0"

    const-string v18, "0"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    const/16 v6, 0x2710

    const/16 v7, 0x5a

    const/16 v8, 0x1388

    const/16 v9, 0x32

    const/16 v10, 0x3e8

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/16 v19, 0xc8

    move-object v1, v0

    invoke-direct/range {v1 .. v19}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->mobileMidPolicy:Lcom/android/server/MCPSPolicy;

    new-instance v0, Lcom/android/server/MCPSPolicy;

    const-string v21, "00"

    const-string/jumbo v22, "ff"

    const-string v32, "c0"

    const-string v33, "0"

    const-string v34, "0"

    const-string v35, "30"

    const-string v36, "0"

    const-string v37, "0"

    const/16 v25, 0xe10

    const/16 v27, 0x708

    const/16 v29, 0x64

    const/16 v38, 0xc8

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v38}, Lcom/android/server/MCPSPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/MCPSPolicy;->mobileLowPolicy:Lcom/android/server/MCPSPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MCPSPolicy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/MCPSPolicy;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string/jumbo v2, "rmnet%d"

    move-object v3, p1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string/jumbo v2, "mcps_arps_cpu"

    move-object v4, p2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_lit2big_load_thresh"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_lit2big_pps_thresh"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_big2lit_load_thresh"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_big2lit_pps_thresh"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_oamask_util_threshold"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_arps_activate_pps_threshold"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_set_cluster_for_newflow"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mcps_enable"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string v2, "big_clat_rps"

    move-object/from16 v5, p12

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string v2, "big_rmnet_clat_rps"

    move-object/from16 v6, p13

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string v2, "big_rmnet_rps"

    move-object/from16 v7, p14

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string/jumbo v2, "lit_clat_rps"

    move-object/from16 v8, p15

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string/jumbo v2, "lit_rmnet_clat_rps"

    move-object/from16 v9, p16

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    const-string/jumbo v2, "lit_rmnet_rps"

    move-object/from16 v10, p17

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    const-string/jumbo v2, "mif_rps_thresh"

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/MCPSPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/MCPSPolicy;->defaultPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/MCPSPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/MCPSPolicy;->mobileHighPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/MCPSPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/MCPSPolicy;->mobileMidPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/server/MCPSPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/MCPSPolicy;->mobileLowPolicy:Lcom/android/server/MCPSPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MCPSPolicy;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    return-object v0
.end method

.method public static convert_mask(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    move-object v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "big_rmnet_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "big_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "lit_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "big_rmnet_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "lit_rmnet_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "lit_rmnet_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/server/McpsService;->dec2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/McpsService;->hex2dec(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aca6df0 -> :sswitch_5
        -0x5f2f01a9 -> :sswitch_4
        -0x4b85c2c7 -> :sswitch_3
        0x30b6863a -> :sswitch_2
        0x7c0b51f1 -> :sswitch_1
        0x7eb5e4ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getIFPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_4

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/class/net/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_4

    :cond_0
    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/net/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/queues/rx-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/rps_cpus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v8, "/sys/module/mcps/parameters/mcps_rps_config"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static getPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "big_rmnet_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "big_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "rmnet%d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "mcps_set_cluster_for_newflow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "mcps_lit2big_load_thresh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v1, "mcps_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v1, "lit_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v1, "mcps_arps_cpu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v1, "mcps_oamask_util_threshold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "mcps_arps_activate_pps_threshold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "mif_rps_thresh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_b
    const-string/jumbo v1, "mcps_big2lit_pps_thresh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_c
    const-string/jumbo v1, "mcps_lit2big_pps_thresh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_d
    const-string/jumbo v1, "mcps_big2lit_load_thresh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_e
    const-string/jumbo v1, "mcps_enable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_f
    const-string v1, "big_rmnet_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_10
    const-string/jumbo v1, "lit_rmnet_clat_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_11
    const-string/jumbo v1, "lit_rmnet_rps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/module/modem_argos_notifier/parameters/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/module/mcps/parameters/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const-string/jumbo v1, "rmnet"

    invoke-static {v1, p1}, Lcom/android/server/MCPSPolicy;->getIFPaths(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    nop

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aca6df0 -> :sswitch_11
        -0x5f2f01a9 -> :sswitch_10
        -0x4b85c2c7 -> :sswitch_f
        -0x461c4997 -> :sswitch_e
        -0x45a0a88b -> :sswitch_d
        -0x409fdeb8 -> :sswitch_c
        -0x2c0bb238 -> :sswitch_b
        0xeefe2db -> :sswitch_a
        0x1ad314d8 -> :sswitch_9
        0x1e2dd969 -> :sswitch_8
        0x1e665843 -> :sswitch_7
        0x30b6863a -> :sswitch_6
        0x3b9ccc09 -> :sswitch_5
        0x3c6df3f5 -> :sswitch_4
        0x47eb5b10 -> :sswitch_3
        0x4ec459e1 -> :sswitch_2
        0x7c0b51f1 -> :sswitch_1
        0x7eb5e4ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSkipOnReleaseBinary(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "mcps_lit2big_load_thresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "mcps_oamask_util_threshold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "mcps_arps_activate_pps_threshold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "mcps_big2lit_pps_thresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "mcps_lit2big_pps_thresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "mcps_big2lit_load_thresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x45a0a88b -> :sswitch_5
        -0x409fdeb8 -> :sswitch_4
        -0x2c0bb238 -> :sswitch_3
        0x1ad314d8 -> :sswitch_2
        0x1e2dd969 -> :sswitch_1
        0x3c6df3f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static updateMCPSPolicyLevel(I)V
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "persist.sys.mcps_level"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public duplicate()Lcom/android/server/MCPSPolicy;
    .locals 3

    new-instance v0, Lcom/android/server/MCPSPolicy;

    invoke-direct {v0}, Lcom/android/server/MCPSPolicy;-><init>()V

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/MCPSPolicy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MCPSPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInts()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getStrings()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public overwrite(Lcom/android/server/MCPSPolicy;)Lcom/android/server/MCPSPolicy;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MCPSPolicy;->duplicate()Lcom/android/server/MCPSPolicy;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, v0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public toFormatString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MCPSPolicy;->mStrings:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/MCPSPolicy;->isSkipOnReleaseBinary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/MCPSPolicy;->mInts:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method
