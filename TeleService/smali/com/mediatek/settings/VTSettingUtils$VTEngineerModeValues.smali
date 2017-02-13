.class public Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;
.super Ljava/lang/Object;
.source "VTSettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VTSettingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTEngineerModeValues"
.end annotation


# instance fields
.field public auto_answer:Z

.field public auto_answer_time:Ljava/lang/String;

.field public config_audio_channel_adapt:Ljava/lang/String;

.field public config_multiplex_level:Ljava/lang/String;

.field public config_terminal_type:Ljava/lang/String;

.field public config_use_wnsrp:Ljava/lang/String;

.field public config_video_channel_adapt:Ljava/lang/String;

.field public config_video_channel_reverse:Ljava/lang/String;

.field public config_video_codec_preference:Ljava/lang/String;

.field public debug_message:Z

.field public get_raw_data:Z

.field public h223_raw_data:Z

.field public h263_only:Z

.field public log_filter_tag_0_value:I

.field public log_filter_tag_1_value:I

.field public log_filter_tag_2_value:I

.field public log_filter_tag_3_value:I

.field public log_to_file:Z

.field final synthetic this$0:Lcom/mediatek/settings/VTSettingUtils;

.field public working_mode:Ljava/lang/String;

.field public working_mode_detail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/VTSettingUtils;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->this$0:Lcom/mediatek/settings/VTSettingUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->resetValuesToDefault()V

    .line 213
    return-void
.end method


# virtual methods
.method public resetValuesToDefault()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 216
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode:Ljava/lang/String;

    .line 217
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->working_mode_detail:Ljava/lang/String;

    .line 218
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_audio_channel_adapt:Ljava/lang/String;

    .line 219
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_adapt:Ljava/lang/String;

    .line 220
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_channel_reverse:Ljava/lang/String;

    .line 221
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_multiplex_level:Ljava/lang/String;

    .line 222
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_video_codec_preference:Ljava/lang/String;

    .line 223
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_use_wnsrp:Ljava/lang/String;

    .line 224
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->config_terminal_type:Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer:Z

    .line 226
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->auto_answer_time:Ljava/lang/String;

    .line 227
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->debug_message:Z

    .line 228
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h223_raw_data:Z

    .line 229
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_to_file:Z

    .line 230
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->h263_only:Z

    .line 231
    iput-boolean v1, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->get_raw_data:Z

    .line 233
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_0_value:I

    .line 234
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_1_value:I

    .line 235
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_2_value:I

    .line 236
    iput v2, p0, Lcom/mediatek/settings/VTSettingUtils$VTEngineerModeValues;->log_filter_tag_3_value:I

    .line 237
    return-void
.end method
