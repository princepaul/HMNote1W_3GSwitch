.class Lcom/mediatek/settings/CellBroadcastSettings$2;
.super Ljava/lang/Object;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CellBroadcastSettings;

.field final synthetic val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastSettings$2;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iput-object p2, p0, Lcom/mediatek/settings/CellBroadcastSettings$2;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings$2;->this$0:Lcom/mediatek/settings/CellBroadcastSettings;

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings$2;->val$oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;

    # invokes: Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->access$200(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V

    .line 234
    const/4 v0, 0x0

    return v0
.end method
