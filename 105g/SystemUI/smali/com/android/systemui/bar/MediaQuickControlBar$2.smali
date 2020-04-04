.class Lcom/android/systemui/bar/MediaQuickControlBar$2;
.super Ljava/lang/Object;
.source "MediaQuickControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/MediaQuickControlBar;->inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MediaQuickControlBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar$2;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1138"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar$2;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    const-string v1, "com.samsung.android.mdx.quickboard.action.OPEN_DEVICE_PANEL"

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MediaQuickControlBar;->access$000(Lcom/android/systemui/bar/MediaQuickControlBar;Ljava/lang/String;)V

    return-void
.end method
