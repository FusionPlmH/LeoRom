.class Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController$1;
.super Ljava/lang/Object;
.source "BiometricsSecurityUpdatePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->showLatestAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController$1;->this$0:Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 v0, 0x2144

    const/16 v1, 0x2145

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
