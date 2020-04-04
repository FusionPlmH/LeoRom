.class Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "left"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$300(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->this$1:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;->val$row:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->access$400(Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V

    return-void
.end method
