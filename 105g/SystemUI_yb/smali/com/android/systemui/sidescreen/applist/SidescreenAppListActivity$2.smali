.class Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "SidescreenAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$2;->this$0:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinnedStackAnimationEnded()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-super {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedStackAnimationEnded()V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-super {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    return-void
.end method
