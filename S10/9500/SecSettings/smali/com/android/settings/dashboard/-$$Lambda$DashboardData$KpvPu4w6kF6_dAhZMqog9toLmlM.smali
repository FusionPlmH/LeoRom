.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardData;

.field private final synthetic f$1:Lcom/android/settingslib/drawer/Tile;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardData;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;->f$0:Lcom/android/settings/dashboard/DashboardData;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;->f$1:Lcom/android/settingslib/drawer/Tile;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;->f$0:Lcom/android/settings/dashboard/DashboardData;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;->f$1:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardData$KpvPu4w6kF6_dAhZMqog9toLmlM;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardData;->lambda$updateSummaryByProvider$0(Lcom/android/settings/dashboard/DashboardData;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;)V

    return-void
.end method
