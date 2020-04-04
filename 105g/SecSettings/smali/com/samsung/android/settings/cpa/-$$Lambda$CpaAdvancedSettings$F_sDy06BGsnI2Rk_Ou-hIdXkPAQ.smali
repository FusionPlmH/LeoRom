.class public final synthetic Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;->f$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;->f$2:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;->f$0:Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/-$$Lambda$CpaAdvancedSettings$F_sDy06BGsnI2Rk_Ou-hIdXkPAQ;->f$2:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;->lambda$updateApnDataToDatabase$0(Lcom/samsung/android/settings/cpa/CpaAdvancedSettings;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method
