.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$4vPl1p5x_J2SwQWVgl_bq-B5_lI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$4vPl1p5x_J2SwQWVgl_bq-B5_lI;->f$0:Lcom/android/settings/wifi/WifiConfigController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$4vPl1p5x_J2SwQWVgl_bq-B5_lI;->f$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->lambda$onCheckedChanged$0(Lcom/android/settings/wifi/WifiConfigController;)V

    return-void
.end method
