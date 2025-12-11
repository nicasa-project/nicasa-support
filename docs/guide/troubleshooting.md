# Troubleshooting

## Common Issues

### Application Won't Start

**Symptoms**: Nicasa fails to launch or crashes immediately

**Solutions**:
1. Check system requirements (see [Introduction](/guide/introduction))
2. Update your graphics drivers
3. Try running as administrator/root
4. Reinstall the application
5. Check for conflicting software

### Images Not Loading

**Symptoms**: Thumbnails don't appear or images fail to open

**Solutions**:
1. Verify the image files aren't corrupted
2. Check file permissions
3. Ensure the format is supported (see [Usage](/guide/usage))
4. Try opening the folder again
5. Clear application cache (Settings > Advanced > Clear Cache)

### Slow Performance

**Symptoms**: Application is sluggish or thumbnails load slowly

**Solutions**:
1. Reduce thumbnail size in settings
2. Close other memory-intensive applications
3. Ensure adequate free disk space
4. Update to the latest version
5. Disable animations in settings

### Display Issues

**Symptoms**: Interface appears corrupted or text is unreadable

**Solutions**:
1. Adjust display scaling in system settings
2. Update graphics drivers
3. Try different theme options
4. Reset to default settings

## Error Messages

### "File not found"

This usually means the image file has been moved or deleted. Try reopening the folder or selecting a different directory.

### "Unsupported format"

The image format isn't recognized. Check our list of [supported formats](/guide/usage) or convert the image to a compatible format.

### "Out of memory"

Your system doesn't have enough RAM. Close other applications or upgrade your memory.

## Advanced Troubleshooting

### View Logs

To access application logs:

1. Go to Help > Show Logs
2. Or find logs in:
   - Windows: `%APPDATA%\Nicasa\logs`
   - macOS: `~/Library/Application Support/Nicasa/logs`
   - Linux: `~/.config/Nicasa/logs`

### Reset Application

To reset all settings to default:

1. Close Nicasa
2. Delete the application data folder
3. Restart Nicasa

### Command Line Options

For advanced users, Nicasa supports command line arguments:

```bash
nicasa --verbose          # Enable verbose logging
nicasa --reset-settings   # Reset all settings
nicasa /path/to/folder    # Open specific folder
```

## Getting More Help

If these solutions don't resolve your issue:

1. Check our [FAQ](/guide/faq)
2. Search existing [issues](https://github.com/nicasa-project/nicasa-support/issues)
3. Create a new issue with:
   - Your operating system and version
   - Nicasa version
   - Steps to reproduce the problem
   - Any error messages or screenshots